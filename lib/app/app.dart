import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_shop/common/authorization/bloc/authorization_bloc.dart';
import 'package:flutter_shop/common/authorization/data/authorization_repository.dart';
import 'package:flutter_shop/common/cart/bloc/cart_bloc.dart';
import 'package:flutter_shop/common/cart/data/cart_repository.dart';
import 'package:flutter_shop/common/service_locator/injection_container.dart';
import 'package:flutter_shop/l10n/localization.dart';
import 'package:flutter_shop/screens/add_edit_product/add_edit_product.dart';
import 'package:flutter_shop/screens/authentication/authentication_screen.dart';
import 'package:flutter_shop/screens/cart_detail/cart_detail_screen.dart';
import 'package:flutter_shop/screens/orders/orders_screen.dart';
import 'package:flutter_shop/screens/product_detail/product_detail_screen.dart';
import 'package:flutter_shop/screens/products_overview/products_overview.dart';
import 'package:flutter_shop/screens/splash/splash_screen.dart';
import 'package:flutter_shop/screens/user_products/user_products_screen.dart';
import 'package:flutter_shop/theme/app_theme.dart';

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
      child: const FlutterShopView(),
    );
  }
}

class FlutterShopView extends StatefulWidget {
  const FlutterShopView({Key? key}) : super(key: key);

  @override
  State<FlutterShopView> createState() => _FlutterShopViewState();
}

class _FlutterShopViewState extends State<FlutterShopView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      theme: appTheme(Theme.of(context)),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) =>
          BlocListener<AuthorizationBloc, AuthorizationState>(
        listener: (context, state) => state.maybeWhen(
          authorized: () => _navigator.pushNamedAndRemoveUntil(
            ProductsOverviewScreen.routeName,
            (route) => false,
          ),
          orElse: () => _navigator.pushNamedAndRemoveUntil(
            AuthenticationScreen.routeName,
            (route) => false,
          ),
        ),
        child: child,
      ),
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        AuthenticationScreen.routeName: (_) => const AuthenticationScreen(),
        ProductsOverviewScreen.routeName: (_) => const ProductsOverviewScreen(),
        ProductDetailScreen.routeName: (_) => const ProductDetailScreen(),
        CartDetailScreen.routeName: (_) => const CartDetailScreen(),
        OrderScreen.routeName: (_) => const OrderScreen(),
        UserProductScreen.routeName: (_) => const UserProductScreen(),
        AddEditProductScreen.routeName: (_) => const AddEditProductScreen(),
      },
    );
  }
}
