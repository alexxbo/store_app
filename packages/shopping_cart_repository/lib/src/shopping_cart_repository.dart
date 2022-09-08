import 'package:shopping_cart_api/shopping_cart_api.dart' hide Product;
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

abstract class ICartRepository {
  factory ICartRepository({ICartApi? api}) => _CartRepository(api: api);

  Future<List<CartItem>> getItems();

  Future<void> add(AddProduct product);

  Future<void> remove(String productId);

  Future<void> removeSingle(String productId);

  Future<void> clear();
}

class _CartRepository implements ICartRepository {
  _CartRepository({ICartApi? api}) : _api = api ?? ICartApi();

  final ICartApi _api;

  @override
  Future<List<CartItem>> getItems() async {
    final items = await _api.getItems();
    return items
        .map(
          (item) => CartItem(
            productId: item.productId,
            title: item.title,
            quantity: item.quantity,
            price: item.price,
          ),
        )
        .toList();
  }

  @override
  Future<void> add(AddProduct product) async {
    await _api.add(
      productId: product.productId,
      title: product.title,
      price: product.price,
    );
  }

  @override
  Future<void> remove(String productId) async {
    await _api.remove(productId);
  }

  @override
  Future<void> removeSingle(String productId) async {
    await _api.removeSingle(productId);
  }

  @override
  Future<void> clear() async {
    await _api.clear();
  }
}
