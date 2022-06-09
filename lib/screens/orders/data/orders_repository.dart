import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:store_app/common/data/constants.dart';

import 'package:store_app/common/data/model/order_item.dart';

abstract class IOrdersRepository {
  static IOrdersRepository call({
    required final String userId,
    required final String token,
  }) =>
      _OrdersRepository(userId: userId, token: token);

  Future<List<OrderItem>> getOrders();
}

class _OrdersRepository implements IOrdersRepository {
  final String _userId;
  final String _token;

  const _OrdersRepository({
    required final String userId,
    required final String token,
  })  : _token = token,
        _userId = userId;

  @override
  Future<List<OrderItem>> getOrders() async {
    final url = Uri.parse('$productsBaseUrl/orders/$_userId.json?auth=$_token');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    } else {
      final data = json.decode(response.body) as Map<String, dynamic>?;
      if (data == null) return [];

      final loadedOrders = <OrderItem>[];
      data.forEach(
        (orderId, order) {
          loadedOrders.add(OrderItem.fromJson(orderId, order));
        },
      );

      return loadedOrders.reversed.toList();
    }
  }
}
