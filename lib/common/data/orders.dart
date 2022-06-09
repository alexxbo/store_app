// ignore_for_file: avoid_types_as_parameter_names

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '/common/data/constants.dart';
import 'model/cart_item.dart';
import 'model/order_item.dart';

class Orders with ChangeNotifier {
  final String? _token;
  final String? _userId;
  List<OrderItem> _orders = [];

  Orders(this._token, this._userId, List<OrderItem> orders) {
    _orders.addAll(orders);
  }

  List<OrderItem> get orders {
    return List.unmodifiable(_orders);
  }

  Future<void> fetchOrders() async {
    final url = Uri.parse('$productsBaseUrl/orders/$_userId.json?auth=$_token');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    } else {
      final data = json.decode(response.body) as Map<String, dynamic>?;
      if (data == null) return;

      final loadedOrders = <OrderItem>[];
      data.forEach(
        (orderId, order) {
          loadedOrders.add(OrderItem.fromJson(orderId, order));
        },
      );
      _orders = loadedOrders.reversed.toList();
      notifyListeners();
    }
  }

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
    } else {
      _orders.insert(
        0,
        OrderItem(
          id: json.decode(response.body)['name'],
          products: products,
          amount: total,
          date: DateTime.now(),
        ),
      );
      notifyListeners();
    }
  }
}
