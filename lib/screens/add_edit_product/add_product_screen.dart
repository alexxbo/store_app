import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/common/data/auth.dart';
import '/common/data/products.dart';
import '/common/data/model/product.dart';
import '/screens/add_edit_product/common/add_edit_product.dart';
import '/screens/add_edit_product/model/create_product.dart';

class AddProductScreen extends StatefulWidget {
  static const String routeName = '/add_products';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushNamed(routeName);
  }

  const AddProductScreen();

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState
    extends AddEditProductScreenState<AddProductScreen> {
  @override
  CreateProduct initProduct() => CreateProduct.empty();

  @override
  Future<void> saveForm(CreateProduct newProduct) {
    final product = Product(
      id: DateTime.now().toString(),
      title: newProduct.title,
      description: newProduct.description,
      price: newProduct.price,
      imageUrl: newProduct.imageUrl,
      userId: context.read<Auth>().userId!,
    );
    return context.read<Products>().add(product);
  }
}
