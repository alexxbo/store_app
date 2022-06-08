import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '/common/data/constants.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String userId;

  bool isFavorite = false;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.userId,
  });

  factory Product.fromJson(String productId, Map<String, dynamic> json) {
    return Product(
      id: productId,
      title: json['title'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      userId: json['creatorId'],
    );
  }

  void setFavorite(
    String? token,
    String? userId,
  ) async {
    final url = Uri.parse(
        '$productsBaseUrl/user_favorites/$userId/$id.json?auth=$token');
    final response = await http.put(url, body: json.encode(!isFavorite));

    if (response.statusCode != 200) {
      throw HttpException(
          'Status code: ${response.statusCode} message: ${response.body}',
          uri: url);
    } else {
      isFavorite = !isFavorite;
      notifyListeners();
    }
  }
}
