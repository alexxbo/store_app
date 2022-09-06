class OrderProductResponse {
  factory OrderProductResponse.fromJson(Map<String, dynamic> json) {
    return OrderProductResponse._(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      quantity: json['quantity'],
    );
  }

  const OrderProductResponse._({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });

  final String? id;
  final String? title;
  final int? quantity;
  final double? price;
}
