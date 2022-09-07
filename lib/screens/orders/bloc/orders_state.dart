part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.error({
    @Default(<OrderItem>[]) final List<OrderItem> orders,
    @Default('Something went wrong. Please try again later.')
        final String message,
  }) = _ErrorOrdersState;

  const factory OrdersState.success({
    required final List<OrderItem> orders,
  }) = _SuccessOrdersState;

  const factory OrdersState.empty() = _EmptyOrdersState;

  const factory OrdersState.inProgress() = _InProgressOrdersState;

  const OrdersState._();

  bool get isInProgress => maybeMap<bool>(
        inProgress: (_) => true,
        orElse: () => false,
      );

  String? get errorMessageOrNull => maybeMap<String?>(
        error: (state) => state.message,
        orElse: () => null,
      );

  List<OrderItem> get orders => maybeMap<List<OrderItem>>(
        success: (state) => state.orders,
        error: (state) => state.orders,
        orElse: () => <OrderItem>[],
      );
}
