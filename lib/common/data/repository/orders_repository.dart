import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../model/cart_item.dart';
import '../constants.dart';
import '../model/order_item.dart';

abstract class IOrdersRepository {
  static IOrdersRepository call({
    required final String userId,
    required final String token,
  }) =>
      _OrdersRepository(userId: userId, token: token);

  Future<List<OrderItem>> getOrders();

  Future<void> add(List<CartItem> products, double total);
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

  @override
  Future<void> add(List<CartItem> products, double total) async {
    final date = DateTime.now();

    final url = Uri.parse('$productsBaseUrl/orders/$_userId.json?auth=$_token');
    final response = await http.post(
      url,
      body: json.encode({
        'amount': total,
        'products': products
            .map((product) => {
                  'id': product.id,
                  'title': product.title,
                  'price': product.price,
                  'quantity': product.quantity,
                })
            .toList(growable: false),
        'date': date.toIso8601String(),
      }),
    );

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    }
  }
}
