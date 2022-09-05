import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/data/model/order_item.dart';
import 'package:flutter_shop/common/orders/repository/orders_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_bloc.freezed.dart';
part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final IOrdersRepository _repository;

  OrdersBloc(IOrdersRepository repository)
      : _repository = repository,
        super(const OrdersState.inProgress()) {
    on<OrdersEvent>(
      (event, emit) async => event.map<Future<void>>(
        fetchOrders: (event) => _fetchOrders(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
    add(const OrdersEvent.fetchOrders());
  }

  Future<void> _fetchOrders(
    OrdersEvent event,
    Emitter<OrdersState> emit,
  ) async {
    try {
      emit(const OrdersState.inProgress());
      final orders = await _repository.getOrders();
      final newState = orders.isEmpty
          ? const OrdersState.empty()
          : OrdersState.success(orders: orders);
      emit(newState);
    } on Object catch (_) {
      emit(const OrdersState.error());

      rethrow;
    }
  }
}
