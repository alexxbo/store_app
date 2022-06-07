import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/data/products.dart';
import '/screens/add_edit_product/common/add_edit_product.dart';
import '/screens/add_edit_product/model/create_product.dart';

class EditProductScreen extends StatefulWidget {
  static const String routeName = '/edit_products';

  static void launch({
    required BuildContext context,
    required String productId,
  }) {
    Navigator.of(context).pushNamed(routeName, arguments: productId);
  }

  const EditProductScreen();

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState
    extends AddEditProductScreenState<EditProductScreen> {
  @override
  Future<void> saveForm(CreateProduct editProduct) {
    final id = ModalRoute.of(context)?.settings.arguments as String;
    return context.read<Products>().update(
        id: id,
        title: editProduct.title,
        description: editProduct.description,
        price: editProduct.price,
        imageUrl: editProduct.imageUrl);
  }

  @override
  CreateProduct initProduct() {
    final id = ModalRoute.of(context)?.settings.arguments as String;
    final editedProduct =
        Provider.of<Products>(context, listen: false).getById(id);
    return CreateProduct(
      title: editedProduct.title,
      description: editedProduct.description,
      price: editedProduct.price,
      imageUrl: editedProduct.imageUrl,
    );
  }
}
