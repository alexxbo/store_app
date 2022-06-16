import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:store_app/common/products/repository/product_favorite.dart';

import '../../data/constants.dart';
import '../../data/model/product.dart';
import 'model/product_response.dart';

abstract class IProductsApi {
  factory IProductsApi(final Client client) => _ProductsApi(client);

  Future<List<ProductResponse>> getAllProducts({
    required final String userToken,
  });
  Future<List<ProductResponse>> getUserProducts({
    required final String userToken,
    required final String userId,
  });
  Future<List<ProductFavoriteResponse>> getUserFavorites({
    required final String userToken,
    required final String userId,
  });
  Future<void> toggleFavoriteProduct({
    required final String userToken,
    required final String userId,
    required final Product product,
  });
  Future<bool> isProductFavorite({
    required final String userToken,
    required final String userId,
    required final String productId,
  });
  Future<ProductResponse> getProductById({
    required final String userToken,
    required final String productId,
  });
}

class _ProductsApi implements IProductsApi {
  const _ProductsApi(final Client client) : _client = client;

  final Client _client;

  @override
  Future<List<ProductResponse>> getAllProducts({
    required final String userToken,
  }) {
    return _fetchProducts(userToken: userToken);
  }

  @override
  Future<List<ProductResponse>> getUserProducts({
    required final String userToken,
    required final String userId,
  }) {
    return _fetchProducts(userToken: userToken, userId: userId);
  }

  @override
  Future<void> toggleFavoriteProduct({
    required final String userToken,
    required final String userId,
    required final Product product,
  }) async {
    final url = Uri.parse(
      '$productsBaseUrl/user_favorites/$userId/${product.id}.json?auth=$userToken',
    );
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
    required final String userToken,
    required final String userId,
  }) async {
    final url = Uri.parse(
      '$productsBaseUrl/user_favorites/$userId.json?auth=$userToken',
    );
    final favResponse = await _client.get(url);
    final favoriteDate = jsonDecode(favResponse.body) as Map<String, dynamic>;
    final favorites = favoriteDate.entries
        .map((item) => ProductFavoriteResponse.fromMapEntry(item));

    return favorites.toList();
  }

  @override
  Future<bool> isProductFavorite({
    required final String userToken,
    required final String userId,
    required final String productId,
  }) async {
    final url = Uri.parse(
      '$productsBaseUrl/user_favorites/$userId.json?auth=$userToken',
    );
    final favResponse = await _client.get(url);
    final favoriteDate = jsonDecode(favResponse.body) ?? {};

    return favoriteDate.isEmpty ? false : favoriteDate[productId] ?? false;
  }

  Future<List<ProductResponse>> _fetchProducts({
    required final String userToken,
    final String userId = '',
  }) async {
    final filterQuery =
        userId.isNotEmpty ? '&orderBy="creatorId"&equalTo="$userId"' : '';
    final url = Uri.parse(
      '$productsBaseUrl/products.json?auth=$userToken$filterQuery',
    );

    final response = await _client.get(url);

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    } else {
      final data = json.decode(response.body) as Map<String, dynamic>?;
      if (data == null) return [];

      final loadedProducts = <ProductResponse>[];
      data.forEach((productId, json) {
        final product = ProductResponse.fromJson(productId, json);
        loadedProducts.add(product);
      });

      return loadedProducts;
    }
  }

  @override
  Future<ProductResponse> getProductById({
    required String userToken,
    required String productId,
  }) async {
    final url = Uri.parse(
      '$productsBaseUrl/products/$productId.json?auth=$userToken',
    );
    final response = await _client.get(url);
    final json = jsonDecode(response.body) as Map<String, dynamic>;

    return ProductResponse.fromJson(productId, json);
  }
}
