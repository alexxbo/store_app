// ignore_for_file: avoid_types_as_parameter_names

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '/common/data/constants.dart';
import 'model/cart_item.dart';

class Orders with ChangeNotifier {
  final String? _token;
  final String? _userId;

  Orders(this._token, this._userId);

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
