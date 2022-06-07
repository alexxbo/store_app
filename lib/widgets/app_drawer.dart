import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/data/auth.dart';
import '/screens/orders/orders_screen.dart';
import '/screens/product_list/products_overview.dart';
import '/screens/user_products/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hello Friend!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () => _openProductsScreen(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders'),
            onTap: () => _openOrderScreen(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage Products'),
            onTap: () => _openUserProductsScreen(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
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
  context.read<Auth>().logout();
}
