import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/data/model/order_item.dart';
import 'package:flutter_shop/common/orders/repository/orders_repository.dart';
import 'package:flutter_shop/common/service_locator/injection_container.dart';
import 'package:flutter_shop/screens/orders/bloc/orders_bloc.dart';
import 'package:flutter_shop/screens/orders/order_item.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';
import 'package:flutter_shop/widgets/progress.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  static const String routeName = '/orders';

  static Future<void> launch({required BuildContext context}) async {
    await Navigator.of(context).pushReplacementNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    final repository = locator.get<IOrdersRepository>();

    return BlocProvider(
      create: (context) => OrdersBloc(repository),
      child: const OrdersView(),
    );
  }
}

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      drawer: const AppDrawer(),
      body: BlocConsumer<OrdersBloc, OrdersState>(
        listener: (context, state) =>
            _showErrorMessage(state.errorMessageOrNull, context),
        builder: (context, state) => state.when(
          inProgress: () => const ProgressWidget(),
          empty: () => _buildEmptyState(context),
          success: (list) => _buildOrderList(list),
          error: (_, __) => _buildError(context),
        ),
      ),
    );
  }

  Widget _buildOrderList(List<OrderItem> orders) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) => OrderItemView(order: orders[index]),
    );
  }

  Widget _buildError(BuildContext context) {
    return Center(
      child: Text(
        'An error occurred!',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Text(
        'No orders yet.',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  void _showErrorMessage(String? message, BuildContext context) {
    if (message != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }
}
