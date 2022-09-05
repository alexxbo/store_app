import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_bloc.freezed.dart';
part 'product_detail_event.dart';
part 'product_detail_state.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc(IProductsRepository repository)
      : _repository = repository,
        super(const _ProgressProductDetailState()) {
    on<ProductDetailEvent>(
      (event, emit) async => event.map<Future<void>>(
        onStarted: (event) => _onStarted(event, emit),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }
  final IProductsRepository _repository;

  Future<void> _onStarted(
    _StartedProductDetailEvent event,
    Emitter<ProductDetailState> emit,
  ) async {
    try {
      final product = await _repository.getProductById(event.productId);
      emit(ProductDetailState.success(product: product));
    } on SocketException {
      emit(
        const ProductDetailState.error(
          message: 'No Internet connection, please try again later',
        ),
      );
    } on Exception {
      emit(const ProductDetailState.error());
      rethrow;
    }
  }
}
