import 'package:collection/collection.dart';

import '../../data/model/product.dart';
import '../../data/storage/user_storage.dart';
import '../api/products_api.dart';

abstract class IProductsRepository {
  factory IProductsRepository({
    required final IProductsApi api,
    required final IUserStorage userStorage,
  }) =>
      _ProductRepository(api: api, userStorage: userStorage);

  Future<List<Product>> getAllProducts();

  Future<List<Product>> getUserProducts();

  Future<void> toggleProductFavorite(Product product);

  Future<Product> getProductById(String productId);

  Future<void> removeUserProduct(String productId);

  Future<List<Product>> getPopularProducts();
}

class _ProductRepository implements IProductsRepository {
  _ProductRepository({
    required final IProductsApi api,
    required final IUserStorage userStorage,
  })  : _api = api,
        _userStorage = userStorage;

  final IProductsApi _api;
  final IUserStorage _userStorage;

  @override
  Future<List<Product>> getAllProducts() async {
    final user = await _userStorage.getSavedUser();
    if (user == null) throw Exception('User is null');
    final productResponseList =
        await _api.getAllProducts(userToken: user.token);
    final userFavorites =
        await _api.getUserFavorites(userToken: user.token, userId: user.userId);

    final products = productResponseList.map(
      (item) => item.mapToProduct(
        userFavorites
                .firstWhereOrNull((favItem) => favItem.productId == item.id)
                ?.favorite ??
            false,
      ),
    );

    return products.toList();
  }

  @override
  Future<List<Product>> getUserProducts() async {
    final user = await _userStorage.getSavedUser();
    if (user == null) throw Exception('User is null');
    final productResponseList =
        await _api.getUserProducts(userToken: user.token, userId: user.userId);
    final userFavorites =
        await _api.getUserFavorites(userToken: user.token, userId: user.userId);

    final products = productResponseList.map(
      (item) => item.mapToProduct(
        userFavorites
                .firstWhereOrNull((favItem) => favItem.productId == item.id)
                ?.favorite ??
            false,
      ),
    );

    return products.toList();
  }

  @override
  Future<void> toggleProductFavorite(Product product) async {
    final user = await _userStorage.getSavedUser();
    if (user == null) throw Exception('User is null');
    _api.toggleFavoriteProduct(
      userToken: user.token,
      userId: user.userId,
      product: product,
    );
  }

  @override
  Future<Product> getProductById(String productId) async {
    final user = await _userStorage.getSavedUser();
    if (user == null) throw Exception('User is null');
    final productResponse = await _api.getProductById(
      userToken: user.token,
      productId: productId,
    );

    final favorite = await _api.isProductFavorite(
      userToken: user.token,
      userId: user.userId,
      productId: productId,
    );

    return productResponse.mapToProduct(favorite);
  }

  @override
  Future<void> removeUserProduct(String productId) async {
    final user = await _userStorage.getSavedUser();
    if (user == null) throw Exception('User is null');
    await _api.removeUserProduct(userToken: user.token, productId: productId);
  }

  @override
  Future<List<Product>> getPopularProducts() async {
    final products = await getAllProducts();
    products.shuffle();

    return products.take(5).toList(growable: false);
  }
}
