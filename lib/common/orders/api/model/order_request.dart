class OrderRequest {
  final double amount;
  final List<OrderProductRequest> products;
  final DateTime date;

  OrderRequest({
    required this.amount,
    required this.products,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'products': products
            .map((product) => products.map((item) => item.toJson()))
            .toList(growable: false),
        'date': date.toIso8601String(),
      };
}

class OrderProductRequest {
  final String id;
  final String title;
  final int quantity;
  final double price;

  const OrderProductRequest({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'quantity': quantity,
      };
}
