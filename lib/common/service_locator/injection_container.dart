import 'package:get_it/get_it.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:store_app/screens/authentication/api/authentication_api.dart';

import '../../screens/authentication/data/authentication_repository.dart';
import '../../util/logger_intercepter.dart';
import '../authorization/data/authorization_repository.dart';
import '../cart/api/cart_api.dart';
import '../cart/data/cart_repository.dart';
import '../data/repository/orders_repository.dart';
import '../data/storage/user_storage.dart';
import '../products/api/products_api.dart';
import '../products/repository/products_repository.dart';

final locator = GetIt.I;

void setupServiceLocator() {
  final userStorage = IUserStorage();
  final client = InterceptedClient.build(interceptors: [LoggerInterceptor()]);
  // final user = await userStorage.getSavedUser();
  // Api
  final productApi = IProductsApi(client);
  final cartApi = ICartApi.call();
  final authenticationApi = IAuthenticationApi(client);

  // Repository
  locator.registerLazySingleton(
    () => IAuthenticationRepository(
      api: authenticationApi,
      storage: userStorage,
    ),
  );
  locator.registerLazySingleton(
    () => IProductsRepository(
      api: productApi,
      userStorage: userStorage,
    ),
  );
  locator.registerLazySingleton(
    () => ICartRepository.call(cartApi),
  );
  locator.registerLazySingleton(
    () => IAuthorizationRepository(storage: userStorage),
  );

  locator.registerFactory<IOrdersRepository>(
    () => IOrdersRepository.call(
      userId: '',
      token: '',
    ),
  );
}
