part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  // ignore: unused_element
  const OrdersEvent._();
  const factory OrdersEvent.fetchOrders() = _FetchOrdersEvent;
}
