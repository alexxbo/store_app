class Product {
  const Product({
    required this.productId,
    required this.title,
    required this.quantity,
    required this.price,
  });

  final String productId;
  final String title;
  final int quantity;
  final double price;

  Product copyWith({
    String? productId,
    String? title,
    int? quantity,
    double? price,
  }) {
    return Product(
      productId: productId ?? this.productId,
      title: title ?? this.title,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }
}
