import 'dart:convert';
import 'dart:io';

import 'package:flutter_shop/common/orders/api/model/order_item_response.dart';
import 'package:flutter_shop/common/orders/api/model/order_request.dart';
import 'package:http/http.dart';

abstract class IOrderApi {
  factory IOrderApi(Client client, String baseUrl) =>
      _OrderApi(client, baseUrl);

  Future<List<OrderItemResponse>> getOrders({
    required final String userId,
    required final String userToken,
  });

  Future<void> add(OrderRequest order);
}

class _OrderApi implements IOrderApi {
  _OrderApi(this._client, this._baseUrl);

  final Client _client;
  final String _baseUrl;

  @override
  Future<void> add(OrderRequest order) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<OrderItemResponse>> getOrders({
    required final String userId,
    required final String userToken,
  }) async {
    final url = Uri.parse('$_baseUrl/orders/$userId.json?auth=$userToken');
    final response = await _client.get(url);

    if (response.statusCode != 200) {
      throw HttpException(
        'Status code: ${response.statusCode} message: ${response.body}',
        uri: url,
      );
    } else {
      final data = json.decode(response.body) as Map<String, dynamic>?;
      if (data == null) return [];

      final loadedOrders = <OrderItemResponse>[];
      data.forEach(
        (orderId, order) {
          loadedOrders.add(OrderItemResponse.fromJson(orderId, order));
        },
      );

      return loadedOrders.reversed.toList();
    }
  }
}
