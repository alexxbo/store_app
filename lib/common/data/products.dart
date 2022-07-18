import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_shop/util/logging/logger.dart';
import 'package:http/http.dart' as http;

import 'model/product.dart';

class Products with ChangeNotifier {
  final String _productsBaseUrl;
  final String? _token;
  final String? _userId;
  final List<Product> _items = [];

  Products(this._productsBaseUrl, this._token, this._userId);

  Product getById(String id) {
    return _items.firstWhere((item) => item.id == id);
  }

  Future<void> add(Product product) async {
    if (_userId == null) {
      logger.e(message: 'add product => userId is null');

      return;
    }
    final url = Uri.parse('$_productsBaseUrl/products.json?auth=$_token');
    final response = await http.post(
      url,
      body: json.encode({
        'title': product.title,
        'description': product.description,
        'price': product.price,
        'imageUrl': product.imageUrl,
        'creatorId': _userId,
      }),
    );

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    } else {
      Product(
        id: json.decode(response.body)['name'],
        title: product.title,
        description: product.description,
        price: product.price,
        imageUrl: product.imageUrl,
        userId: _userId!,
        isFavorite: false,
      );
      _items.add(product);
      notifyListeners();
    }
  }

  // ignore: long-parameter-list
  Future<void> update({
    required String? id,
    required String title,
    required String description,
    required double price,
    required String imageUrl,
  }) async {
    final index = _items.indexWhere((product) => product.id == id);
    if (index >= 0) {
      final current = _items[index];
      final url = Uri.parse(
        '$_productsBaseUrl/products/${current.id}.json?auth=$_token',
      );
      final response = await http.patch(
        url,
        body: json.encode({
          'title': title,
          'description': description,
          'price': price,
          'imageUrl': imageUrl,
        }),
      );
      if (response.statusCode != 200) {
        throw HttpException(
          'Status code: ${response.statusCode} message: ${response.body}',
          uri: url,
        );
      } else {
        final newProduct = Product(
          id: current.id,
          title: title,
          description: description,
          price: price,
          imageUrl: imageUrl,
          userId: current.userId,
          isFavorite: current.isFavorite,
        );

        _items[index] = newProduct;
        notifyListeners();
      }
    }
  }
}
