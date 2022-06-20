part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
// ignore: unused_element
  const ProductDetailEvent._();

  const factory ProductDetailEvent.onStarted(String productId) =
      _StartedProductDetailEvent;
}
