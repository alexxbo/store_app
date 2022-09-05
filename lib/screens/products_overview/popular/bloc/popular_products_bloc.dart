import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_products_bloc.freezed.dart';
part 'popular_products_event.dart';
part 'popular_products_state.dart';

class PopularProductsBloc
    extends Bloc<PopularProductsEvent, PopularProductsState> {
  PopularProductsBloc(IProductsRepository repository)
      : _repository = repository,
        super(const PopularProductsState.inProgress()) {
    on<PopularProductsEvent>(
      (event, emit) async => event.map<Future<void>>(
        started: (event) => _started(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  final IProductsRepository _repository;

  Future<void> _started(
    _StartedPopularProductsEvent event,
    Emitter<PopularProductsState> emit,
  ) async {
    try {
      emit(const PopularProductsState.inProgress());
      final products = await _repository.getPopularProducts();
      emit(PopularProductsState.success(products: products));
    } on Object catch (_) {
      emit(const PopularProductsState.error());

      rethrow;
    }
  }
}
