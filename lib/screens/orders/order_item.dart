import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../common/data/model/order_item.dart';

class OrderItemView extends StatelessWidget {
  final OrderItem order;

  const OrderItemView({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: ExpansionTile(
        title: ListTile(
          title: Text('\$${order.amount}'),
          subtitle: Text(DateFormat('dd/MM/yyyy hh:mm').format(order.date)),
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
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Spacer(),
                    Text(
                      '${item.quantity} x ${item.price.toStringAsFixed(2)}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
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
