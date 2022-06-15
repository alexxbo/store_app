part of 'products_overview_bloc.dart';

@freezed
class ProductsOverviewState with _$ProductsOverviewState {
  // ignore: unused_element
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

  const factory ProductsOverviewState.progress({
    @Default(ProductsOverviewFilter.all) final ProductsOverviewFilter filter,
    @Default(<Product>[]) final List<Product> products,
  }) = _ProgressProductsState;

  const factory ProductsOverviewState.error({
    @Default(ProductsOverviewFilter.all) final ProductsOverviewFilter filter,
    @Default(<Product>[]) final List<Product> products,
    @Default('Something went wrong. Please try again later.')
        final String message,
  }) = _ErrorProductsState;

  const factory ProductsOverviewState.success({
    @Default(ProductsOverviewFilter.all) final ProductsOverviewFilter filter,
    required final List<Product> products,
  }) = _SuccessProductsState;
}
