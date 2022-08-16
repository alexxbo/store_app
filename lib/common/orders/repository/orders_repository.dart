import 'package:collection/collection.dart';
import 'package:flutter_shop/common/data/model/cart_item.dart';
import 'package:flutter_shop/common/data/model/order_item.dart';
import 'package:flutter_shop/common/data/storage/user_storage.dart';
import 'package:flutter_shop/common/orders/api/model/order_request.dart';
import 'package:flutter_shop/common/orders/api/order_api.dart';
import 'package:flutter_shop/common/orders/repository/order_mappers.dart';

abstract class IOrdersRepository {
  factory IOrdersRepository({
    required final IUserStorage userStorage,
    required final IOrderApi api,
  }) =>
      _OrdersRepository(userStorage: userStorage, api: api);

  Future<List<OrderItem>> getOrders();

  Future<void> add(List<CartItem> products, double total);
}

class _OrdersRepository implements IOrdersRepository {
  const _OrdersRepository({
    required final IUserStorage userStorage,
    required final IOrderApi api,
  })  : _userStorage = userStorage,
        _api = api;

  final IUserStorage _userStorage;
  final IOrderApi _api;

  @override
  Future<List<OrderItem>> getOrders() async {
    final user = await _userStorage.getSavedUser();
    if (user == null) throw Exception('user is null');
    final ordersResponse =
        await _api.getOrders(userId: user.userId, userToken: user.token);
    final orders = ordersResponse
        .map((order) => order.toOrderItem())
        .whereNotNull()
        .toList();

    return orders;
  }

  @override
  Future<void> add(List<CartItem> products, double total) async {
    final order = OrderRequest(
      amount: total,
      products: products.map((item) => item.toOrderProductRequest()).toList(),
      date: DateTime.now(),
    );
    await _api.add(order);
  }
}
