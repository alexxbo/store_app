class OrderItem {
  final String id;
  final double amount;
  final List<OrderProduct> products;
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
          .map((productJson) => OrderProduct.fromJson(productJson))
          .toList(),
    );
  }
}

class OrderProduct {
  final String id;
  final String title;
  final int quantity;
  final double price;

  const OrderProduct({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });

  factory OrderProduct.fromJson(Map<String, dynamic> json) {
    return OrderProduct(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      quantity: json['quantity'],
    );
  }
}
