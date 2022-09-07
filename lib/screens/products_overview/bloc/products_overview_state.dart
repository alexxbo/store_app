part of 'products_overview_bloc.dart';

@freezed
class ProductsOverviewState with _$ProductsOverviewState {
  const factory ProductsOverviewState.success({
    required final List<Product> products,
    @Default(ProductsOverviewFilter.all) final ProductsOverviewFilter filter,
  }) = _SuccessProductsState;

  const factory ProductsOverviewState.error({
    @Default(<Product>[]) final List<Product> products,
    @Default(ProductsOverviewFilter.all) final ProductsOverviewFilter filter,
    @Default('Something went wrong. Please try again later.')
        final String message,
  }) = _ErrorProductsState;

  const factory ProductsOverviewState.progress({
    @Default(<Product>[]) final List<Product> products,
    @Default(ProductsOverviewFilter.all) final ProductsOverviewFilter filter,
  }) = _ProgressProductsState;

  const ProductsOverviewState._();

  bool get isEmpty => maybeMap<bool>(
        success: (list) => list.isEmpty,
        orElse: () => true,
      );

  bool get isProgress => maybeMap<bool>(
        progress: (_) => true,
        orElse: () => false,
      );

  String? get errorMessageOrNull => maybeMap<String?>(
        error: (state) => state.message,
        orElse: () => null,
      );
}
