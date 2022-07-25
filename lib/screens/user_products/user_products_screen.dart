import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/screens/add_edit_product/add_edit_product.dart';

import '../../common/data/model/product.dart';
import '../../common/products/repository/products_repository.dart';
import '../../common/service_locator/injection_container.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/progress.dart';
import 'bloc/user_products_bloc.dart';
import 'user_products_item.dart';

class UserProductScreen extends StatelessWidget {
  static const String routeName = '/user_products';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const UserProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repository = locator.get<IProductsRepository>();

    return BlocProvider(
      create: (context) => UserProductsBloc(repository)
        ..add(const UserProductsEvent.onStarted()),
      child: const UserProductView(),
    );
  }
}

class UserProductView extends StatelessWidget {
  const UserProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: [
          IconButton(
            onPressed: () => _openAddProductScreen(context),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: RefreshIndicator(
        onRefresh: () async => _refreshProducts(context),
        child: BlocBuilder<UserProductsBloc, UserProductsState>(
          builder: (context, state) => state.when(
            progress: (_) => const ProgressWidget(),
            success: (list) => _buildProductList(list),
            error: (_, message) => ErrorWidget(message),
          ),
        ),
      ),
    );
  }

  Widget _buildProductList(List<Product> list) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final item = list[index];

          return UserProductsItem(
            id: item.id,
            title: item.title,
            imageUrl: item.imageUrl,
          );
        },
      ),
    );
  }

  Future<void> _refreshProducts(BuildContext context) async {
    context.read<UserProductsBloc>().add(const UserProductsEvent.onStarted());
  }

  void _openAddProductScreen(BuildContext context) {
    AddEditProductScreen.launchAdd(context: context);
  }
}
