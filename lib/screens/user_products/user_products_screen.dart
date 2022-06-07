import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/data/products.dart';
import '/screens/user_products/user_products_item.dart';
import '/screens/add_edit_product/add_product_screen.dart';
import '/widgets/app_drawer.dart';
import '/widgets/progress.dart';
import '/util/extensions.dart';

class UserProductScreen extends StatelessWidget {
  static const String routeName = '/user_products';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const UserProductScreen();

  @override
  Widget build(BuildContext context) {
    // final catalog = context.watch<Products>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Products'),
        actions: [
          IconButton(
            onPressed: () => _openEditProductScreen(context),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: RefreshIndicator(
          onRefresh: (() => _refreshProducts(context)),
          child: FutureBuilder(
            future: _refreshProducts(context),
            builder: (context, snapshot) {
              if (snapshot.isDone) {
                return _buildProductList();
              } else if (snapshot.hasError) {
                return _buildError();
              } else {
                return ProgressWidget();
              }
            },
          )),
    );
  }

  void _openEditProductScreen(BuildContext context) {
    AddProductScreen.launch(context: context);
  }

  Future<void> _refreshProducts(BuildContext context) async {
    await context.read<Products>().fetchProducts(true);
  }

  Widget _buildProductList() {
    return Consumer<Products>(
      builder: (context, catalog, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: catalog.items.length,
          itemBuilder: (context, index) {
            final item = catalog.items[index];
            return UserProductsItem(
              id: item.id,
              title: item.title,
              imageUrl: item.imageUrl,
            );
          },
        ),
      ),
    );
  }

  Widget _buildError() {
    return Center(
      child: Text('Some thing went wrong. Please try again.'),
    );
  }
}
