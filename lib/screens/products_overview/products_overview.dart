import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/cart/bloc/cart_bloc.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:flutter_shop/common/service_locator/injection_container.dart';
import 'package:flutter_shop/screens/cart_detail/cart_detail_screen.dart';
import 'package:flutter_shop/screens/products_overview/bloc/products_overview_bloc.dart';
import 'package:flutter_shop/screens/products_overview/popular/bloc/popular_products_bloc.dart';
import 'package:flutter_shop/screens/products_overview/popular/popular_products.dart';
import 'package:flutter_shop/screens/products_overview/products_overview_filter.dart';
import 'package:flutter_shop/screens/products_overview/products_overview_item.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';
import 'package:flutter_shop/widgets/badge.dart';
import 'package:flutter_shop/widgets/progress.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const String routeName = '/products';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repository = locator.get<IProductsRepository>();

    return BlocProvider<ProductsOverviewBloc>(
      create: (context) => ProductsOverviewBloc(repository),
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
          error: (filter, products, _) => _buildBody(products),
          success: (filter, products) => products.isEmpty
              ? _buildEmptyState(context)
              : _buildBody(products),
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

  Widget _buildBody(List<Product> products) {
    final repository = locator.get<IProductsRepository>();

    return BlocProvider<PopularProductsBloc>(
      create: (context) => PopularProductsBloc(repository)
        ..add(const PopularProductsEvent.started()),
      child: Builder(builder: (context) {
        return BlocBuilder<PopularProductsBloc, PopularProductsState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                if (state.products.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        'Popular products',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                if (state.products.isNotEmpty)
                  SliverToBoxAdapter(
                    child: PopularProducts(products: state.products),
                  ),
                _buildProductList(products),
              ],
            );
          },
        );
      }),
    );
  }

  Widget _buildProductList(List<Product> products) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) => ProductsOverviewItem(product: products[index]),
          childCount: products.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
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
