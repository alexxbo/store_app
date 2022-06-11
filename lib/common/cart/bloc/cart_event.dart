part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  // ignore: unused_element
  const CartEvent._();

  const factory CartEvent.addProduct({
    required final String productId,
    required final String title,
    required final double price,
  }) = _AddProductCartEvent;

  const factory CartEvent.removeProduct(
    final String productId,
  ) = _RemoveProductCartEvent;

  const factory CartEvent.reduceQuantityOrRemoveProduct(
    final String productId,
  ) = _ReduceQuantityOrRemoveProductCartEvent;

  const factory CartEvent.clear() = _ClearCartEvent;
}
