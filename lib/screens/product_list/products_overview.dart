import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/util/extensions.dart';

import '/data/cart.dart';
import '/data/model/product.dart';
import '/data/products.dart';
import '/screens/cart/cart_screen.dart';
import '/screens/product_list/product_item.dart';
import '/widgets/app_drawer.dart';
import '/widgets/badge.dart';

class ProductsOverviewScreen extends StatefulWidget {
  static const String routeName = '/';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const ProductsOverviewScreen();

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _isFavorite = false;
  bool _showProgress = false;

  @override
  void initState() {
    showProgress(true);
    context
        .read<Products>()
        .fetchProducts()
        .onErrorMessage(context)
        .whenComplete(() => showProgress(false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final productsProvider = context.watch<Products>();
    final products =
        _isFavorite ? productsProvider.favoriteItems : productsProvider.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          Consumer<Cart>(
            builder: (_, cart, child) => Badge(
              value: '${cart.itemCount}',
              child: child ?? Container(),
            ),
            child: IconButton(
              onPressed: () {
                CartScreen.launch(context: context);
              },
              icon: Icon(Icons.shopping_cart),
            ),
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: _FilterOptions.ALL,
                  child: Text('All'),
                ),
                PopupMenuItem(
                  value: _FilterOptions.FAVORITE,
                  child: Text('Favorite'),
                ),
              ];
            },
            onSelected: _setFilter,
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: _showProgress
          ? Center(
              child: CircularProgressIndicator(),
            )
          : products.isEmpty
              ? Center(
                  child: Text(
                    'No products yet',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              : GridView.builder(
                  padding: EdgeInsets.all(16.0),
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (_, index) {
                    final item = products[index];
                    return ChangeNotifierProvider<Product>.value(
                      value: item,
                      child: ProductItem(),
                    );
                  },
                ),
    );
  }

  void _setFilter(Object? filter) {
    setState(() {
      switch (filter) {
        case _FilterOptions.ALL:
          _isFavorite = false;
          break;
        case _FilterOptions.FAVORITE:
          _isFavorite = true;
          break;
      }
    });
  }

  void showProgress(bool show) {
    setState(() {
      _showProgress = show;
    });
  }
}

enum _FilterOptions {
  ALL,
  FAVORITE,
}
