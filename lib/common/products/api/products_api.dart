import 'dart:convert';
import 'dart:io';

import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/common/products/api/model/product_response.dart';
import 'package:flutter_shop/common/products/repository/product_favorite.dart';
import 'package:http/http.dart';

abstract class IProductsApi {
  factory IProductsApi(Client client, String baseUrl) =>
      _ProductsApi(client, baseUrl);

  Future<List<ProductModel>> getAllProducts();

  Future<List<ProductModel>> getUserProducts({
    required final String userId,
  });

  Future<List<ProductFavoriteResponse>> getUserFavorites({
    required final String userId,
  });

  Future<void> toggleFavoriteProduct({
    required final String userId,
    required final Product product,
  });

  Future<bool> isProductFavorite({
    required final String userId,
    required final String productId,
  });

  Future<ProductModel> getProductById({
    required final String productId,
  });

  Future<void> removeUserProduct({
    required final String productId,
  });

  Future<void> addUserProduct({
    required ProductModel product,
  });

  Future<void> updateUserProduct({
    required ProductModel product,
  });
}

class _ProductsApi implements IProductsApi {
  const _ProductsApi(Client client, String baseUrl)
      : _client = client,
        _baseUrl = baseUrl;

  final Client _client;
  final String _baseUrl;

  @override
  Future<List<ProductModel>> getAllProducts() {
    return _fetchProducts();
  }

  @override
  Future<List<ProductModel>> getUserProducts({
    required final String userId,
  }) {
    return _fetchProducts(userId: userId);
  }

  @override
  Future<void> toggleFavoriteProduct({
    required final String userId,
    required final Product product,
  }) async {
    final url =
        Uri.parse('$_baseUrl/user_favorites/$userId/${product.id}.json');

    final response =
        await _client.put(url, body: json.encode(!product.isFavorite));

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    }
  }

  @override
  Future<List<ProductFavoriteResponse>> getUserFavorites({
    required final String userId,
  }) async {
    final url = Uri.parse('$_baseUrl/user_favorites/$userId.json');
    final favResponse = await _client.get(url);
    final favoriteDate = jsonDecode(favResponse.body) as Map<String, dynamic>;
    final favorites = favoriteDate.entries
        .map((item) => ProductFavoriteResponse.fromMapEntry(item));

    return favorites.toList();
  }

  @override
  Future<bool> isProductFavorite({
    required final String userId,
    required final String productId,
  }) async {
    final url = Uri.parse('$_baseUrl/user_favorites/$userId.json');
    final favResponse = await _client.get(url);
    final favoriteDate = jsonDecode(favResponse.body) ?? {};

    return favoriteDate.isEmpty ? false : favoriteDate[productId] ?? false;
  }

  @override
  Future<ProductModel> getProductById({
    required String productId,
  }) async {
    final url = Uri.parse('$_baseUrl/products/$productId.json');
    final response = await _client.get(url);
    final json = jsonDecode(response.body) as Map<String, dynamic>;

    return ProductModel.fromJson(productId, json);
  }

  @override
  Future<void> removeUserProduct({
    required final String productId,
  }) async {
    final url = Uri.parse('$_baseUrl/products/$productId.json');
    final response = await _client.delete(url);

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    }
  }

  @override
  Future<void> addUserProduct({
    required final ProductModel product,
  }) async {
    final url = Uri.parse('$_baseUrl/products.json');
    final response = await _client.post(
      url,
      body: json.encode(product.toCreateProductJson()),
    );

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    }
  }

  @override
  Future<void> updateUserProduct({
    required ProductModel product,
  }) async {
    final url = Uri.parse('$_baseUrl/products/${product.id}.json');
    final response = await _client.patch(
      url,
      body: json.encode(product.toUpdateProductJson()),
    );

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    }
  }

  Future<List<ProductModel>> _fetchProducts({
    final String userId = '',
  }) async {
    final filterQuery =
        userId.isNotEmpty ? '?orderBy="creatorId"&equalTo="$userId"' : '';
    final url = Uri.parse('$_baseUrl/products.json$filterQuery');

    final response = await _client.get(url);

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    } else {
      final data = json.decode(response.body) as Map<String, dynamic>?;
      if (data == null) {
        return [];
      }

      final loadedProducts = <ProductModel>[];
      data.forEach((productId, json) {
        final product = ProductModel.fromJson(productId, json);
        loadedProducts.add(product);
      });

      return loadedProducts;
    }
  }
}
