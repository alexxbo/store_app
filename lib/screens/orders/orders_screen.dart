import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/util/extensions.dart';
import '/data/orders.dart';
import '/screens/orders/order_item.dart';
import '/widgets/progress.dart';
import '/widgets/app_drawer.dart';

class OrderScreen extends StatelessWidget {
  static const String routeName = '/orders';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  const OrderScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Orders')),
        drawer: AppDrawer(),
        body: FutureBuilder(
          future: context.read<Orders>().fetchOrders(),
          builder: (context, snapshot) {
            if (snapshot.isDone) {
              return _buildOrderList();
            } else if (snapshot.hasError) {
              return _buildError();
            } else {
              return ProgressWidget();
            }
          },
        ));
  }

  Consumer<Orders> _buildOrderList() {
    return Consumer<Orders>(builder: (context, data, child) {
      final orders = data.orders;
      if (orders.isEmpty) {
        return Center(
          child: Text(
            'No orders yet.',
            style: Theme.of(context).textTheme.headline6,
          ),
        );
      } else {
        return ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) => OrderItemView(order: orders[index]),
        );
      }
    });
  }

  Widget _buildError() {
    return Center(
      child: Text('An error occurred!'),
    );
  }
}
