import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/util/extensions.dart';
import '/common/data/orders.dart';
import '/screens/orders/order_item.dart';
import '/widgets/progress.dart';
import '/widgets/app_drawer.dart';

class OrderScreen extends StatelessWidget {
  static const String routeName = '/orders';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      drawer: const AppDrawer(),
      body: FutureBuilder(
        future: context.read<Orders>().fetchOrders(),
        builder: (context, snapshot) {
          if (snapshot.isDone) {
            return _buildOrderList();
          } else if (snapshot.hasError) {
            return _buildError();
          } else {
            return const ProgressWidget();
          }
        },
      ),
    );
  }

  Consumer<Orders> _buildOrderList() {
    return Consumer<Orders>(
      builder: (context, data, child) {
        final orders = data.orders;

        return orders.isEmpty
            ? Center(
                child: Text(
                  'No orders yet.',
                  style: Theme.of(context).textTheme.headline6,
                ),
              )
            : ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) =>
                    OrderItemView(order: orders[index]),
              );
      },
    );
  }

  Widget _buildError() {
    return const Center(
      child: Text('An error occurred!'),
    );
  }
}
