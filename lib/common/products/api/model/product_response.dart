class ProductResponse {
  ProductResponse({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.userId,
  });

  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String userId;

  factory ProductResponse.fromJson(
    String productId,
    Map<String, dynamic> json,
  ) =>
      ProductResponse(
        id: productId,
        title: json['title'],
        description: json['description'],
        price: json['price'],
        imageUrl: json['imageUrl'],
        userId: json['creatorId'],
      );
}
