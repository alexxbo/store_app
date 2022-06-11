import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/cart/bloc/cart_bloc.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String productId;
  final String title;
  final double price;
  final int quantity;

  const CartItem({
    Key? key,
    required this.id,
    required this.productId,
    required this.title,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) => _showConfirmDeleteDialog(context),
      onDismissed: (direction) => _removeProduct(context),
      background: Container(
        margin: const EdgeInsets.all(24),
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Delete'),
            const SizedBox(width: 4),
            Icon(
              Icons.delete,
              size: 24,
              color: Theme.of(context).colorScheme.error,
            ),
          ],
        ),
      ),
      child: Card(
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: FittedBox(child: Text('\$$price')),
              ),
            ),
            title: Text(title),
            subtitle: Text('Total: \$${(price * quantity).toStringAsFixed(2)}'),
            trailing: Text('$quantity x'),
          ),
        ),
      ),
    );
  }

  void _removeProduct(BuildContext context) {
    context.read<CartBloc>().add(CartEvent.removeProduct(productId));
  }

  Future<bool> _showConfirmDeleteDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete'),
        content: const Text('Do you want to delete the item from cart? '),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    return result ?? false;
  }
}
