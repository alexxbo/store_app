class CartItem {
  const CartItem({
    required this.productId,
    required this.title,
    required this.quantity,
    required this.price,
  });

  final String productId;
  final String title;
  final int quantity;
  final double price;
}
