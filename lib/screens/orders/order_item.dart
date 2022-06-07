import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '/data/model/order_item.dart';

class OrderItemView extends StatelessWidget {
  final OrderItem order;

  const OrderItemView({required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: ExpansionTile(
        title: ListTile(
          title: Text('\$${order.amount}'),
          subtitle:
              Text('${DateFormat('dd/MM/yyyy hh:mm').format(order.date)}'),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: order.products.length,
              itemBuilder: (context, index) {
                final item = order.products[index];
                return Row(
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      '${item.quantity} x ${item.price.toStringAsFixed(2)}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
