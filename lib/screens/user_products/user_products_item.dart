import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../add_edit_product/edit_product_screen.dart';
import 'bloc/user_products_bloc.dart';

class UserProductsItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const UserProductsItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () => _openEditItemScreen(context),
            icon: Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          IconButton(
            onPressed: () => _deleteItem(context),
            icon: Icon(
              Icons.delete,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ],
      ),
    );
  }

  void _deleteItem(BuildContext context) {
    context.read<UserProductsBloc>().add(UserProductsEvent.onRemove(id));
  }

  void _openEditItemScreen(BuildContext context) {
    EditProductScreen.launch(context: context, productId: id);
  }
}
