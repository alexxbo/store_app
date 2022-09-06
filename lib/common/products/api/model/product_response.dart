class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.userId,
  });

  factory ProductModel.fromJson(
    String productId,
    Map<String, dynamic> json,
  ) =>
      ProductModel(
        id: productId,
        title: json['title'],
        description: json['description'],
        price: json['price'],
        imageUrl: json['imageUrl'],
        userId: json['creatorId'],
      );

  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String userId;

  Map<String, dynamic> toCreateProductJson() => {
        'title': title,
        'description': description,
        'price': price,
        'imageUrl': imageUrl,
        'creatorId': userId,
      };

  Map<String, dynamic> toUpdateProductJson() => {
        'title': title,
        'description': description,
        'price': price,
        'imageUrl': imageUrl,
      };
}
