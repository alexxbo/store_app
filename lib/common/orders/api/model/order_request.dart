class OrderRequest {
  OrderRequest({
    required this.amount,
    required this.products,
    required this.date,
  });

  final double amount;
  final List<OrderProductRequest> products;
  final DateTime date;

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'products': products
            .map((product) => products.map((item) => item.toJson()))
            .toList(growable: false),
        'date': date.toIso8601String(),
      };
}

class OrderProductRequest {
  const OrderProductRequest({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });

  final String id;
  final String title;
  final int quantity;
  final double price;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'quantity': quantity,
      };
}
