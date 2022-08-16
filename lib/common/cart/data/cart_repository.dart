import 'package:flutter_shop/common/cart/api/cart_api.dart';

abstract class ICartRepository {
  static ICartRepository call(ICartApi api) => _CartRepository(api);

  Future<List<CartModel>> getItems();
  Future<void> add(AddProduct product);
  Future<void> remove(String productId);
  Future<void> removeSingle(String productId);
  Future<void> clear();
}

class _CartRepository implements ICartRepository {
  _CartRepository(ICartApi api) : _api = api;

  final ICartApi _api;

  @override
  Future<List<CartModel>> getItems() async {
    return _api.getItems();
  }

  @override
  Future<void> add(AddProduct product) async {
    _api.add(product);
  }

  @override
  Future<void> remove(String productId) async {
    _api.remove(productId);
  }

  @override
  Future<void> removeSingle(String productId) async {
    _api.removeSingle(productId);
  }

  @override
  Future<void> clear() async {
    _api.clear();
  }
}
