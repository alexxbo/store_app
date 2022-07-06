import 'order_product_response.dart';

class OrderItemResponse {
  final String? id;
  final double? amount;
  final List<OrderProductResponse>? products;
  final DateTime? date;

  const OrderItemResponse._({
    required this.id,
    required this.amount,
    required this.products,
    required this.date,
  });

  factory OrderItemResponse.fromJson(
    String orderId,
    Map<String, dynamic> json,
  ) {
    return OrderItemResponse._(
      id: orderId,
      amount: json['amount'],
      date: DateTime.parse(json['date']),
      products: (json['products'] as List<dynamic>)
          .map((productJson) => OrderProductResponse.fromJson(productJson))
          .toList(),
    );
  }
}
