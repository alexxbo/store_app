import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/common/data/cart.dart';
import '/common/data/orders.dart';
import '/screens/cart/cart_item.dart';
import '/screens/product_list/products_overview.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushNamed(routeName);
  }

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Cart>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Spacer(),
                  Chip(label: Text('\$${cart.totalAmount}')),
                  const SizedBox(width: 8),
                  OrderButton(cart: cart),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (_, index) {
                final item = cart.items.values.toList()[index];

                return CartItem(
                  id: item.id,
                  productId: cart.items.keys.toList()[index],
                  title: item.title,
                  quantity: item.quantity,
                  price: item.price,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OrderButton extends StatefulWidget {
  final Cart _cart;

  const OrderButton({Key? key, required Cart cart})
      : _cart = cart,
        super(key: key);

  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  bool _onProgress = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: _onProgress
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : TextButton(
              onPressed: widget._cart.totalAmount == 0.0
                  ? null
                  : () => _onOrderNowClicked(context, widget._cart),
              child: const Text(
                'ORDER NOW',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }

  void _onOrderNowClicked(BuildContext context, Cart cart) {
    _showProgress(true);
    context
        .read<Orders>()
        .add(
          cart.items.values.toList(),
          cart.totalAmount,
        )
        .then(
      (_) {
        cart.clear();
        ProductsOverviewScreen.launch(context: context);
      },
    ).catchError((error) {
      log(error.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Some thing went wrong'),
        ),
      );
    }).whenComplete(() => _showProgress(false));
  }

  void _showProgress(bool show) {
    setState(() {
      _onProgress = show;
    });
  }
}
