import 'package:collection/collection.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/common/data/model/user.dart';
import 'package:flutter_shop/common/data/storage/user_storage.dart';
import 'package:flutter_shop/common/products/api/products_api.dart';
import 'package:flutter_shop/screens/add_edit_product/bloc/models/create_product.dart';

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

  Future<void> editUserProduct(CreateProduct product);

  Future<void> createUserProduct(CreateProduct product);
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
    final user = await _getUser();
    final productResponseList = await _api.getAllProducts();
    final userFavorites = await _api.getUserFavorites(userId: user.userId);

    final products = productResponseList.map(
      (item) => item.mapToProduct(
        isFavorite: userFavorites
                .firstWhereOrNull((favItem) => favItem.productId == item.id)
                ?.favorite ??
            false,
      ),
    );

    return products.toList();
  }

  @override
  Future<List<Product>> getUserProducts() async {
    final user = await _getUser();
    final productResponseList = await _api.getUserProducts(userId: user.userId);
    final userFavorites = await _api.getUserFavorites(userId: user.userId);

    final products = productResponseList.map(
      (item) => item.mapToProduct(
        isFavorite: userFavorites
                .firstWhereOrNull((favItem) => favItem.productId == item.id)
                ?.favorite ??
            false,
      ),
    );

    return products.toList();
  }

  @override
  Future<void> toggleProductFavorite(Product product) async {
    final user = await _getUser();
    await _api.toggleFavoriteProduct(
      userId: user.userId,
      product: product,
    );
  }

  @override
  Future<Product> getProductById(String productId) async {
    final user = await _getUser();
    final productResponse = await _api.getProductById(
      productId: productId,
    );

    final favorite = await _api.isProductFavorite(
      userId: user.userId,
      productId: productId,
    );

    return productResponse.mapToProduct(isFavorite: favorite);
  }

  @override
  Future<void> removeUserProduct(String productId) async {
    await _api.removeUserProduct(productId: productId);
  }

  @override
  Future<List<Product>> getPopularProducts() async {
    final products = await getAllProducts();
    products.shuffle();

    return products.take(5).toList(growable: false);
  }

  @override
  Future<void> createUserProduct(CreateProduct product) async {
    final user = await _getUser();
    await _api.addUserProduct(
      product: product.toProductModel(user.userId),
    );
  }

  @override
  Future<void> editUserProduct(CreateProduct product) async {
    final user = await _getUser();
    await _api.updateUserProduct(
      product: product.toProductModel(user.userId),
    );
  }

  Future<AuthenticatedUser> _getUser() async {
    final user = await _userStorage.getSavedUser();

    if (user == null) {
      throw Exception('User is null');
    }

    return user;
  }
}
