import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_shop/screens/add_edit_product/add_edit_product.dart';
import 'package:provider/provider.dart';

import '../common/authorization/bloc/authorization_bloc.dart';
import '../common/authorization/data/authorization_repository.dart';
import '../common/cart/bloc/cart_bloc.dart';
import '../common/cart/data/cart_repository.dart';
import '../common/data/auth.dart';
import '../common/service_locator/injection_container.dart';
import '../l10n/localization.dart';
import '../screens/authentication/authentication_screen.dart';
import '../screens/cart_detail/cart_detail_screen.dart';
import '../screens/orders/orders_screen.dart';
import '../screens/product_detail/product_detail_screen.dart';
import '../screens/products_overview/products_overview.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/user_products/user_products_screen.dart';
import '../theme/app_theme.dart';

class FlutterShop extends StatelessWidget {
  const FlutterShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartRepository = locator.get<ICartRepository>();
    final authorizationRepository = locator.get<IAuthorizationRepository>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (BuildContext context) => CartBloc(cartRepository),
        ),
        BlocProvider<AuthorizationBloc>(
          create: (BuildContext context) =>
              AuthorizationBloc(authorizationRepository),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Auth()),
        ],
        child: MaterialApp(
          theme: appTheme(Theme.of(context)),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: BlocConsumer<AuthorizationBloc, AuthorizationState>(
            listener: (context, state) {
              final message = state.whenOrNull(error: (message) => message);
              _showErrorMessage(message, context);
            },
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
            AddEditProductScreen.routeName: (_) => const AddEditProductScreen(),
          },
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
