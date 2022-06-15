import '../../common/data/model/product.dart';

enum ProductsOverviewFilter {
  all,
  favorite,
}

extension ProductsOverviewFilterX on ProductsOverviewFilter {
  bool apply(Product product) {
    switch (this) {
      case ProductsOverviewFilter.all:
        return true;
      case ProductsOverviewFilter.favorite:
        return product.isFavorite;
    }
  }

  Iterable<Product> applyAll(Iterable<Product> products) {
    return products.where(apply);
  }
}
