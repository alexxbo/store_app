class ProductFavoriteResponse {
  ProductFavoriteResponse(this.productId, this.favorite);

  final String productId;
  final bool favorite;

  factory ProductFavoriteResponse.fromMapEntry(
    MapEntry<String, dynamic> entry,
  ) =>
      ProductFavoriteResponse(entry.key, entry.value as bool);
}
