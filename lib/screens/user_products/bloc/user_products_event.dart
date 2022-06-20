part of 'user_products_bloc.dart';

@freezed
class UserProductsEvent with _$UserProductsEvent {
// ignore: unused_element
  const UserProductsEvent._();

  const factory UserProductsEvent.onStarted() = _StartedProductsEvent;

  const factory UserProductsEvent.onRemove(String productId) =
      _RemoveProductProductsEvent;
}
