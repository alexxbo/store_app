part of 'products_overview_bloc.dart';

@freezed
class ProductsOverviewEvent with _$ProductsOverviewEvent {
  const factory ProductsOverviewEvent.onSubscribe() = _SubscribeProductsEvent;

  const factory ProductsOverviewEvent.onFilterChanged({
    @Default(ProductsOverviewFilter.all) final ProductsOverviewFilter filter,
  }) = _FilterChangedProductsEvent;

  const factory ProductsOverviewEvent.onFavoriteToggled({
    required final Product product,
  }) = _FavoriteToggledProductsEvent;
}
