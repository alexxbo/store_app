import 'package:flutter/material.dart';
import 'package:flutter_shop/screens/add_edit_product/add_edit_product.dart';
import 'package:flutter_shop/screens/user_products/bloc/user_products_bloc.dart';
import 'package:provider/provider.dart';

class UserProductsItem extends StatelessWidget {
  const UserProductsItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  final String id;
  final String title;
  final String imageUrl;

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
            onPressed: () async => _openEditItemScreen(context),
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

  Future<void> _openEditItemScreen(BuildContext context) async {
    await AddEditProductScreen.launchEdit(
      context: context,
      productId: id,
      onSuccess: () {
        context
            .read<UserProductsBloc>()
            .add(const UserProductsEvent.onStarted());
      },
    );
  }
}
