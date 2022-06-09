import 'package:store_app/common/data/model/cart_item.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime date;

  const OrderItem({
    required this.id,
    required this.amount,
    required this.products,
    required this.date,
  });

  factory OrderItem.fromJson(String orderId, Map<String, dynamic> json) {
    return OrderItem(
      id: orderId,
      amount: json['amount'],
      date: DateTime.parse(json['date']),
      products: (json['products'] as List<dynamic>)
          .map((productJson) => CartItem.fromJson(productJson))
          .toList(),
    );
  }
}
