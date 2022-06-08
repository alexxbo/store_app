import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/theme/app_theme.dart';
import '/screens/splash/splash_screen.dart';
import '/screens/product_detail/product_detail_screen.dart';
import '/screens/product_list/products_overview.dart';
import '/screens/cart/cart_screen.dart';
import '/screens/orders/orders_screen.dart';
import '/screens/user_products/user_products_screen.dart';
import '/screens/add_edit_product/edit_product_screen.dart';
import '/screens/add_edit_product/add_product_screen.dart';
import '/screens/auth/auth_screen.dart';
import '/common/data/model/order_item.dart';
import '/common/data/cart.dart';
import '/common/data/orders.dart';
import '/common/data/products.dart';
import '/common/data/auth.dart';
import '/common/data/model/product.dart';
import '/util/extensions.dart';

void main() {
  runApp(FlutterShop());
}

//FIXME: autologout works only on ProductsOverviewScreen
class FlutterShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Auth()),
        ChangeNotifierProxyProvider<Auth, Products>(
          create: (context) => Products(
            context.read<Auth>().token,
            context.read<Auth>().userId,
            <Product>[],
          ),
          update: (context, auth, previous) => Products(
            auth.token,
            auth.userId,
            previous?.items ?? <Product>[],
          ),
        ),
        ChangeNotifierProxyProvider<Auth, Orders>(
            create: (context) => Orders(
                  context.read<Auth>().token,
                  context.read<Auth>().userId,
                  <OrderItem>[],
                ),
            update: (_, auth, previous) => Orders(
                auth.token, auth.userId, previous?.orders ?? <OrderItem>[])),
        ChangeNotifierProvider(create: (_) => Cart()),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'Flutter Shop',
          theme: appTheme(Theme.of(context)),
          home: auth.isAuth
              ? ProductsOverviewScreen()
              : FutureBuilder(
                  future: auth.tryAutoLogIn(),
                  builder: (context, snapshot) {
                    if (snapshot.isWaiting) {
                      return SplashScreen();
                    } else {
                      return AuthScreen();
                    }
                  },
                ),
          routes: {
            ProductDetailScreen.routeName: (_) => const ProductDetailScreen(),
            CartScreen.routeName: (_) => const CartScreen(),
            OrderScreen.routeName: (_) => const OrderScreen(),
            UserProductScreen.routeName: (_) => const UserProductScreen(),
            EditProductScreen.routeName: (_) => const EditProductScreen(),
            AddProductScreen.routeName: (_) => const AddProductScreen(),
          },
        ),
      ),
    );
  }
}
