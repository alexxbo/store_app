import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/common/authorization/bloc/authorization_bloc.dart';

import '../screens/orders/orders_screen.dart';
import '../screens/product_list/products_overview.dart';
import '../screens/user_products/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Hello Friend!'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Shop'),
            onTap: () => _openProductsScreen(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Orders'),
            onTap: () => _openOrderScreen(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Manage Products'),
            onTap: () => _openUserProductsScreen(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => _logout(context),
          ),
        ],
      ),
    );
  }

  void _openUserProductsScreen(BuildContext context) {
    UserProductScreen.launch(context: context);
  }

  void _openOrderScreen(BuildContext context) {
    OrderScreen.launch(context: context);
  }

  void _openProductsScreen(BuildContext context) {
    ProductsOverviewScreen.launch(context: context);
  }
}

void _logout(BuildContext context) {
  Navigator.of(context).pop();
  context.read<AuthorizationBloc>().add(const AuthorizationEvent.logout());
}
