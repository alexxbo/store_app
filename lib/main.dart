import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:provider/provider.dart';

import 'common/authorization/bloc/authorization_bloc.dart';
import 'common/authorization/data/authorization_repository.dart';
import 'common/bloc/block_observer.dart';
import 'common/cart/api/cart_api.dart';
import 'common/cart/bloc/cart_bloc.dart';
import 'common/cart/data/cart_repository.dart';
import 'common/data/auth.dart';
import 'common/data/products.dart';
import 'common/data/storage/user_storage.dart';
import 'common/products/api/products_api.dart';
import 'common/products/repository/products_repository.dart';
import 'screens/add_edit_product/add_product_screen.dart';
import 'screens/add_edit_product/edit_product_screen.dart';
import 'screens/authentication/authentication_screen.dart';
import 'screens/cart_detail/cart_detail_screen.dart';
import 'screens/orders/orders_screen.dart';
import 'screens/product_detail/product_detail_screen.dart';
import 'screens/products_overview/products_overview.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/user_products/user_products_screen.dart';
import 'theme/app_theme.dart';
import 'util/logger_intercepter.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const FlutterShop()),
    blocObserver: AppBlocObserver(),
  );
}

class FlutterShop extends StatelessWidget {
  const FlutterShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => IUserStorage(),
        ),
        RepositoryProvider(
          create: (context) => ICartRepository.call(ICartApi.call()),
        ),
        RepositoryProvider(
          create: (context) =>
              IAuthorizationRepository(storage: context.read<IUserStorage>()),
        ),
        RepositoryProvider(
          create: (context) => IProductsRepository(
            api: IProductsApi(
              InterceptedClient.build(interceptors: [LoggerInterceptor()]),
            ),
            userStorage: context.read<IUserStorage>(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<CartBloc>(
            create: (BuildContext context) => CartBloc(
              context.read<ICartRepository>(),
            ),
          ),
          BlocProvider<AuthorizationBloc>(
            create: (BuildContext context) => AuthorizationBloc(
              context.read<IAuthorizationRepository>(),
            ),
          ),
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => Auth()),
            ChangeNotifierProxyProvider<Auth, Products>(
              create: (context) => Products(
                context.read<Auth>().token,
                context.read<Auth>().userId,
              ),
              update: (context, auth, previous) => Products(
                auth.token,
                auth.userId,
              ),
            ),
          ],
          child: MaterialApp(
            title: 'Flutter Shop',
            theme: appTheme(Theme.of(context)),
            home: BlocConsumer<AuthorizationBloc, AuthorizationState>(
              listener: ((context, state) {
                final message = state.whenOrNull(error: (message) => message);
                _showErrorMessage(message, context);
              }),
              builder: (context, state) => state.when(
                authorized: () => const ProductsOverviewScreen(),
                notAuthorized: () => const AuthenticationScreen(),
                inProgress: () => const SplashScreen(),
                error: (message) => const AuthenticationScreen(),
              ),
            ),
            routes: {
              ProductDetailScreen.routeName: (_) => const ProductDetailScreen(),
              CartDetailScreen.routeName: (_) => const CartDetailScreen(),
              OrderScreen.routeName: (_) => const OrderScreen(),
              UserProductScreen.routeName: (_) => const UserProductScreen(),
              EditProductScreen.routeName: (_) => const EditProductScreen(),
              AddProductScreen.routeName: (_) => const AddProductScreen(),
            },
          ),
        ),
      ),
    );
  }

  void _showErrorMessage(String? message, BuildContext context) {
    if (message != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }
}
