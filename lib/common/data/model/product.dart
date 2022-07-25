import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../products/api/model/product_response.dart';

@immutable
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String userId;
  final bool isFavorite;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.userId,
    required this.isFavorite,
  });

  Product copyWith({
    final String? id,
    final String? title,
    final String? description,
    final double? price,
    final String? imageUrl,
    final String? userId,
    final bool? isFavorite,
  }) =>
      Product(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        price: price ?? this.price,
        imageUrl: imageUrl ?? this.imageUrl,
        userId: userId ?? this.userId,
        isFavorite: isFavorite ?? this.isFavorite,
      );
}

extension ProductModelX on ProductModel {
  Product mapToProduct(bool isFavorite) => Product(
        id: id,
        title: title,
        description: description,
        price: price,
        imageUrl: imageUrl,
        userId: userId,
        isFavorite: isFavorite,
      );
}