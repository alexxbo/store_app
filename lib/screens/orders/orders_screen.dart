import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/data/auth.dart';
import '../../common/data/model/order_item.dart';
import '../../common/data/repository/orders_repository.dart';
import '../../util/extensions.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/progress.dart';
import 'bloc/orders_bloc.dart';
import 'order_item.dart';

//TODO add swipe to refresh
class OrderScreen extends StatelessWidget {
  static const String routeName = '/orders';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _auth = context.read<Auth>();
    final IOrdersRepository _repository = IOrdersRepository.call(
      userId: _auth.userId.orEmpty(),
      token: _auth.token.orEmpty(),
    );

    return BlocProvider(
      create: (context) => OrdersBloc(_repository),
      child: Scaffold(
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
