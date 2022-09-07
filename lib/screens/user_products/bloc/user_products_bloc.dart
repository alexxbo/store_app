import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_products_bloc.freezed.dart';
part 'user_products_event.dart';
part 'user_products_state.dart';

class UserProductsBloc extends Bloc<UserProductsEvent, UserProductsState> {
  UserProductsBloc(IProductsRepository repository)
      : _repository = repository,
        super(const _ProgressUserProductsState()) {
    on<UserProductsEvent>(
      (event, emit) async => event.map<Future<void>>(
        onStarted: (event) => _onStarted(event, emit),
        onRemove: (event) => _onRemove(event, emit),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  final IProductsRepository _repository;

  Future<void> _onStarted(
    _StartedProductsEvent event,
    Emitter<UserProductsState> emit,
  ) async {
    try {
      emit(UserProductsState.progress(products: state.products));

      final products = await _repository.getUserProducts();
      emit(UserProductsState.success(products: products));
    } on SocketException {
      emit(
        UserProductsState.error(
          products: state.products,
          message: 'No Internet connection, please try again later',
        ),
      );
    } on Exception {
      emit(UserProductsState.error(products: state.products));
      rethrow;
    }
  }

  Future<void> _onRemove(
    _RemoveProductProductsEvent event,
    Emitter<UserProductsState> emit,
  ) async {
    try {
      emit(UserProductsState.progress(products: state.products));
      await _repository.removeUserProduct(event.productId);
      final products = await _repository.getUserProducts();
      emit(UserProductsState.success(products: products));
    } on SocketException {
      emit(
        UserProductsState.error(
          products: state.products,
          message: 'No Internet connection, please try again later',
        ),
      );
    } on Exception {
      emit(UserProductsState.error(products: state.products));
      rethrow;
    }
  }
}
