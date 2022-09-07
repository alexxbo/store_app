class ProductFavoriteResponse {
  ProductFavoriteResponse({
    required this.productId,
    required this.favorite,
  });

  factory ProductFavoriteResponse.fromMapEntry(
    MapEntry<String, dynamic> entry,
  ) =>
      ProductFavoriteResponse(
        productId: entry.key,
        favorite: entry.value as bool,
      );

  final String productId;
  final bool favorite;
}
