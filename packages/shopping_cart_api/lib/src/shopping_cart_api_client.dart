import 'package:shopping_cart_api/shopping_cart_api.dart';

abstract class ICartApi {
  factory ICartApi() => _CartApi();

  Future<List<Product>> getItems();

  Future<void> add({
    required String productId,
    required String title,
    required double price,
  });

  Future<void> remove(String productId);

  Future<void> removeSingle(String productId);

  Future<void> clear();
}

class _CartApi implements ICartApi {
  final List<Product> _items = [];

  @override
  Future<List<Product>> getItems() async => List.unmodifiable(_items);

  @override
  Future<void> add({
    required String productId,
    required String title,
    required double price,
  }) async {
    final index = _items.indexWhere(
      (element) => element.productId == productId,
    );

    if (index >= 0) {
      final current = _items[index];
      final cartItem = current.copyWith(
        title: title,
        price: price,
        quantity: current.quantity + 1,
      );
      _items[index] = cartItem;
    } else {
      _items.add(
        Product(
          productId: productId,
          title: title,
          quantity: 1,
          price: price,
        ),
      );
    }
  }

  @override
  Future<void> clear() async {
    _items.clear();
  }

  @override
  Future<void> remove(String productId) async {
    _items.removeWhere(
      (element) => element.productId == productId,
    );
  }

  @override
  Future<void> removeSingle(String productId) async {
    final index = _items.indexWhere(
      (element) => element.productId == productId,
    );

    if (index < 0) {
      throw Exception(
        "removeSingle -> Can't find item in cart with productId $productId",
      );
    }

    final current = _items[index];
    if (current.quantity > 1) {
      _items[index] = Product(
        productId: current.productId,
        title: current.title,
        quantity: current.quantity - 1,
        price: current.price,
      );
    } else {
      _items.removeWhere(
        (element) => element.productId == productId,
      );
    }
  }
}
