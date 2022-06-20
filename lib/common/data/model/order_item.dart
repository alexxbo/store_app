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
}
