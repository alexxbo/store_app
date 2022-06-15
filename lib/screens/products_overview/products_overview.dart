import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/cart/bloc/cart_bloc.dart';
import '../../common/data/model/product.dart';
import '../../common/products/repository/products_repository.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/badge.dart';
import '../../widgets/progress.dart';
import '../cart_detail/cart_detail_screen.dart';
import 'bloc/products_overview_bloc.dart';
import 'products_overview_filter.dart';
import 'products_overview_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const String routeName = '/';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsOverviewBloc>(
      create: (context) =>
          ProductsOverviewBloc(context.read<IProductsRepository>()),
      child: const ProductsOverviewView(),
    );
  }
}

class ProductsOverviewView extends StatelessWidget {
  const ProductsOverviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                const PopupMenuItem<ProductsOverviewFilter>(
                  value: ProductsOverviewFilter.all,
                  child: Text('All'),
                ),
                const PopupMenuItem(
                  value: ProductsOverviewFilter.favorite,
                  child: Text('Favorite'),
                ),
              ];
            },
            onSelected: (value) => _setFilter(context, value),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: BlocConsumer<ProductsOverviewBloc, ProductsOverviewState>(
        listener: (context, state) {
          _showErrorMessage(state.errorMessageOrNull, context);
        },
        builder: (context, state) => state.when(
          progress: (filter, products) => const ProgressWidget(),
          error: (filter, products, _) => _buildProductList(products),
          success: (filter, products) => products.isEmpty
              ? _buildEmptyState(context)
              : _buildProductList(products),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Text(
        'No products yet',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget _buildProductList(List<Product> products) {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (_, index) {
        return ProductsOverviewItem(product: products[index]);
      },
    );
  }

  void _openCartDetail(BuildContext context) {
    CartDetailScreen.launch(context: context);
  }

  void _setFilter(BuildContext context, final Object? filter) {
    if (filter != null && filter is ProductsOverviewFilter) {
      context
          .read<ProductsOverviewBloc>()
          .add(ProductsOverviewEvent.onFilterChanged(filter: filter));
    }
  }

  void _showErrorMessage(final String? message, BuildContext context) {
    if (message != null && message.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }
}
