import '../../data/model/cart_item.dart';

abstract class ICartApi {
  const ICartApi();

  static ICartApi call() => _CartApi();

  Future<List<CartModel>> getItems();
  Future<void> add(AddProduct product);
  Future<void> remove(String productId);
  Future<void> removeSingle(String productId);
  Future<void> clear();
}

class CartModel {
  const CartModel(this.productId, this.product);

  final String productId;
  final CartItem product;
}

class AddProduct {
  const AddProduct({
    required this.productId,
    required this.title,
    required this.price,
  });

  final String productId;
  final String title;
  final double price;
}

class _CartApi implements ICartApi {
  final List<CartModel> _items = [];

  @override
  Future<List<CartModel>> getItems() async => List.unmodifiable(_items);

  @override
  Future<void> add(AddProduct product) async {
    final index = _items.indexWhere(
      (element) => element.productId == product.productId,
    );

    if (index >= 0) {
      final CartModel current = _items[index];
      final cartItem = current.product.copyWith(
        title: product.title,
        price: product.price,
        quantity: current.product.quantity + 1,
      );
      _items[index] = CartModel(
        product.productId,
        cartItem,
      );
    } else {
      _items.add(
        CartModel(
          product.productId,
          CartItem(
            id: DateTime.now().toString(),
            title: product.title,
            quantity: 1,
            price: product.price,
          ),
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
    if (current.product.quantity > 1) {
      _items[index] = CartModel(
        productId,
        CartItem(
          id: current.product.id,
          title: current.product.title,
          quantity: current.product.quantity - 1,
          price: current.product.price,
        ),
      );
    } else {
      _items.removeWhere(
        (element) => element.productId == productId,
      );
    }
  }
}
