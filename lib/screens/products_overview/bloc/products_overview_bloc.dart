import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:flutter_shop/screens/products_overview/products_overview_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_overview_bloc.freezed.dart';
part 'products_overview_event.dart';
part 'products_overview_state.dart';

class ProductsOverviewBloc
    extends Bloc<ProductsOverviewEvent, ProductsOverviewState> {
  ProductsOverviewBloc(IProductsRepository repository)
      : _repository = repository,
        super(const ProductsOverviewState.progress()) {
    on<ProductsOverviewEvent>(
      (event, emit) async => event.map<Future<void>>(
        onSubscribe: (event) => _onSubscribe(event, emit),
        onFilterChanged: (event) => _onFilterChanged(event, emit),
        onFavoriteToggled: (event) => _onFavoriteToggled(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
    add(const ProductsOverviewEvent.onSubscribe());
  }

  final IProductsRepository _repository;

  Future<void> _onSubscribe(
    _SubscribeProductsEvent event,
    Emitter<ProductsOverviewState> emit,
  ) async {
    emit(const ProductsOverviewState.progress());
    try {
      final products = await _repository.getAllProducts();
      emit(ProductsOverviewState.success(products: products));
    } on SocketException {
      emit(ProductsOverviewState.error(
        products: state.products,
        message: 'No Internet connection, please try again later',
      ));
    } on Exception {
      emit(ProductsOverviewState.error(products: state.products));
      rethrow;
    }
  }

  Future<void> _onFavoriteToggled(
    _FavoriteToggledProductsEvent event,
    Emitter<ProductsOverviewState> emit,
  ) async {
    try {
      await _repository.toggleProductFavorite(event.product);
      final products = await _repository.getAllProducts();
      final filteredProducts = state.filter.applyAll(products).toList();
      emit(ProductsOverviewState.success(
        filter: state.filter,
        products: filteredProducts,
      ));
    } on SocketException {
      emit(ProductsOverviewState.error(
        filter: state.filter,
        products: state.products,
        message: 'No Internet connection, please try again later',
      ));
    } on Exception {
      emit(ProductsOverviewState.error(
        filter: state.filter,
        products: state.products,
      ));
      rethrow;
    }
  }

  Future<void> _onFilterChanged(
    _FilterChangedProductsEvent event,
    Emitter<ProductsOverviewState> emit,
  ) async {
    try {
      final products = await _repository.getAllProducts();
      final filteredProducts = event.filter.applyAll(products).toList();
      emit(ProductsOverviewState.success(
        filter: event.filter,
        products: filteredProducts,
      ));
    } on SocketException {
      emit(ProductsOverviewState.error(
        products: state.products,
        message: 'No Internet connection, please try again later',
      ));
    } on Exception {
      emit(ProductsOverviewState.error(
        filter: event.filter,
        products: state.products,
      ));
      rethrow;
    }
  }
}
