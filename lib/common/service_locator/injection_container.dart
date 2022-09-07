import 'package:flutter_shop/app/environment.dart';
import 'package:flutter_shop/common/authorization/data/authorization_repository.dart';
import 'package:flutter_shop/common/cart/api/cart_api.dart';
import 'package:flutter_shop/common/cart/data/cart_repository.dart';
import 'package:flutter_shop/common/data/storage/user_storage.dart';
import 'package:flutter_shop/common/orders/api/order_api.dart';
import 'package:flutter_shop/common/orders/repository/orders_repository.dart';
import 'package:flutter_shop/common/products/api/products_api.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:flutter_shop/screens/authentication/api/authentication_api.dart';
import 'package:flutter_shop/screens/authentication/data/authentication_repository.dart';
import 'package:flutter_shop/util/interceptor/user_token_interceptor.dart';
import 'package:flutter_shop/util/logging/logger_intercepter.dart';
import 'package:get_it/get_it.dart';
import 'package:http_interceptor/http/intercepted_client.dart';

final locator = GetIt.I;

void setupServiceLocator(Environment environment) {
  final userStorage = IUserStorage();
  final client = InterceptedClient.build(interceptors: [LoggerInterceptor()]);

  final productsApiClient = InterceptedClient.build(
    interceptors: [
      LoggerInterceptor(),
      UserTokenInterceptor(userStorage),
    ],
  );

  // Api
  final productApi = IProductsApi(productsApiClient, environment.shopBaseUrl);
  final cartApi = ICartApi();
  final authenticationApi = IAuthenticationApi(client);
  final orderApi = IOrderApi(client, environment.shopBaseUrl);

  // Repository
  locator
    ..registerLazySingleton(
      () => IAuthenticationRepository(
        api: authenticationApi,
        storage: userStorage,
      ),
    )
    ..registerLazySingleton(
      () => IProductsRepository(
        api: productApi,
        userStorage: userStorage,
      ),
    )
    ..registerLazySingleton(
      () => ICartRepository.call(cartApi),
    )
    ..registerLazySingleton(
      () => IAuthorizationRepository(storage: userStorage),
    )
    ..registerLazySingleton<IOrdersRepository>(
      () => IOrdersRepository(
        userStorage: userStorage,
        api: orderApi,
      ),
    );
}
