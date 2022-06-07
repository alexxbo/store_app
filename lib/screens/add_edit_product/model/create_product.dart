class CreateProduct {
  String? id;
  String title;
  String description;
  double price;
  String imageUrl;

  CreateProduct({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  CreateProduct.Empty()
      : this(title: '', description: '', price: 0.0, imageUrl: '');
}
