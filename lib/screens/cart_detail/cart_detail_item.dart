import 'package:flutter/material.dart';
import 'package:flutter_shop/common/cart/bloc/cart_bloc.dart';
import 'package:flutter_shop/l10n/localization.dart';
import 'package:provider/provider.dart';

class CartDetailItem extends StatelessWidget {
  final String id;
  final String productId;
  final String title;
  final double price;
  final int quantity;

  const CartDetailItem({
    required this.id,
    required this.productId,
    required this.title,
    required this.price,
    required this.quantity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;

    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) async => _showConfirmDeleteDialog(context),
      onDismissed: (direction) => _removeProduct(context),
      background: Container(
        margin: const EdgeInsets.all(24),
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(localization.common_delete),
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
                child: FittedBox(child: Text(localization.common_price(price))),
              ),
            ),
            title: Text(title),
            subtitle: Text(localization.cartDetailItem_total(price * quantity)),
            trailing: Text(localization.cartDetailItem_quantity(quantity)),
          ),
        ),
      ),
    );
  }

  void _removeProduct(BuildContext context) {
    context.read<CartBloc>().add(CartEvent.removeProduct(productId));
  }

  Future<bool> _showConfirmDeleteDialog(BuildContext context) async {
    final localization = context.localization;

    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(localization.common_delete),
        content: Text(localization.cartDetailItem_confirmDelete),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(localization.common_cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(localization.common_delete),
          ),
        ],
      ),
    );

    return result ?? false;
  }
}
