part of 'popular_products_bloc.dart';

@freezed
class PopularProductsState with _$PopularProductsState {
  const factory PopularProductsState.error({
    @Default([]) final List<Product> products,
    @Default('Something went wrong. Please try again later.')
        final String message,
  }) = _ErrorPopularProductsState;

  const factory PopularProductsState.success({
    required final List<Product> products,
  }) = _SuccessPopularProductsState;

  const factory PopularProductsState.inProgress() =
      _InProgressPopularProductsState;

  const PopularProductsState._();

  bool get isInProgress => maybeMap<bool>(
        inProgress: (_) => true,
        orElse: () => false,
      );

  List<Product> get products => maybeMap<List<Product>>(
        success: (state) => state.products,
        error: (state) => state.products,
        orElse: () => <Product>[],
      );
}
