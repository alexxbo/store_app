import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../../data/constants.dart';
import 'model/order_Item_response.dart';
import 'model/order_request.dart';

abstract class IOrderApi {
  factory IOrderApi(Client client) => _OrderApi(client);

  Future<List<OrderItemResponse>> getOrders({
    required final String userId,
    required final String userToken,
  });
  Future<void> add(OrderRequest order);
}

class _OrderApi implements IOrderApi {
  _OrderApi(this._client);

  final Client _client;

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
    final url =
        Uri.parse('$productsBaseUrl/orders/$userId.json?auth=$userToken');
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
