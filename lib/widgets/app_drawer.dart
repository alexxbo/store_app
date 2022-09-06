import 'package:flutter/material.dart';
import 'package:flutter_shop/common/authorization/bloc/authorization_bloc.dart';
import 'package:flutter_shop/screens/orders/orders_screen.dart';
import 'package:flutter_shop/screens/products_overview/products_overview.dart';
import 'package:flutter_shop/screens/user_products/user_products_screen.dart';
import 'package:provider/provider.dart';

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
            onTap: () async => _openProductsScreen(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Orders'),
            onTap: () async => _openOrderScreen(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Manage Products'),
            onTap: () async => _openUserProductsScreen(context),
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

  Future<void> _openUserProductsScreen(BuildContext context) async {
    await UserProductScreen.launch(context: context);
  }

  Future<void> _openOrderScreen(BuildContext context) async {
    await OrderScreen.launch(context: context);
  }

  Future<void> _openProductsScreen(BuildContext context) async {
    await ProductsOverviewScreen.launch(context: context);
  }
}

void _logout(BuildContext context) {
  Navigator.of(context).pop();
  context.read<AuthorizationBloc>().add(const AuthorizationEvent.logout());
}
