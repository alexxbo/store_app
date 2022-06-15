import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';
import 'model/product.dart';

class Products with ChangeNotifier {
  final String? _token;
  final String? _userId;
  List<Product> _items = [];

  Products(this._token, this._userId, List<Product> items) {
    _items.addAll(items);
  }

  List<Product> get items {
    return List.unmodifiable(_items);
  }

  List<Product> get favoriteItems {
    return List.unmodifiable(_items.where((item) => item.isFavorite));
  }

  Future<void> fetchProducts([bool filterByUser = false]) async {
    //TODO remove after refactor
  }

  Product getById(String id) {
    return _items.firstWhere((item) => item.id == id);
  }

  Future<void> add(Product product) async {
    if (_userId == null) {
      log('add product => userId is null');

      return;
    }
    final url = Uri.parse('$productsBaseUrl/products.json?auth=$_token');
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
        '$productsBaseUrl/products/${current.id}.json?auth=$_token',
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

  Future<void> remove(String productId) async {
    final url =
        Uri.parse('$productsBaseUrl/products/$productId.json?auth=$_token');
    final response = await http.delete(url);

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    } else {
      final index = _items.indexWhere((product) => product.id == productId);
      _items.removeAt(index);
      notifyListeners();
    }
  }
}
