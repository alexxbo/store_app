import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../common/cart/bloc/cart_bloc.dart';
import '../../common/data/model/product.dart';
import '../../common/data/products.dart';
import '../../util/extensions.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/badge.dart';
import '../../widgets/mixins/progress.dart';
import '../cart/cart_screen.dart';
import 'product_item.dart';

class ProductsOverviewScreen extends StatefulWidget {
  static const String routeName = '/';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen>
    with ProgressState {
  bool _isFavorite = false;

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
        title: const Text('Products'),
        actions: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) => Badge(
              value: '${state.itemCount}',
              child: IconButton(
                onPressed: () => _openCartDetail(context),
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: _FilterOptions.all,
                  child: Text('All'),
                ),
                const PopupMenuItem(
                  value: _FilterOptions.favorite,
                  child: Text('Favorite'),
                ),
              ];
            },
            onSelected: _setFilter,
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: inProgress
          ? const Center(
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
                  padding: const EdgeInsets.all(16.0),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (_, index) {
                    final item = products[index];

                    return ChangeNotifierProvider<Product>.value(
                      value: item,
                      child: const ProductItem(),
                    );
                  },
                ),
    );
  }

  void _openCartDetail(BuildContext context) {
    CartScreen.launch(context: context);
  }

  void _setFilter(Object? filter) {
    setState(() {
      switch (filter) {
        case _FilterOptions.all:
          _isFavorite = false;
          break;
        case _FilterOptions.favorite:
          _isFavorite = true;
          break;
      }
    });
  }
}

enum _FilterOptions {
  all,
  favorite,
}
