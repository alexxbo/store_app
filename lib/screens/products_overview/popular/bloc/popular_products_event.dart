part of 'popular_products_bloc.dart';

@freezed
class PopularProductsEvent with _$PopularProductsEvent {
  const factory PopularProductsEvent.started() = _StartedPopularProductsEvent;
}
