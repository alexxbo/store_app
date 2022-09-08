import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/cart/bloc/cart_bloc.dart';
import 'package:flutter_shop/common/orders/repository/orders_repository.dart';
import 'package:flutter_shop/common/service_locator/injection_container.dart';
import 'package:flutter_shop/screens/cart_detail/cart_detail_item.dart';
import 'package:flutter_shop/screens/products_overview/products_overview.dart';
import 'package:flutter_shop/util/extensions.dart';
import 'package:flutter_shop/widgets/mixins/progress.dart';
import 'package:provider/provider.dart';

class CartDetailScreen extends StatelessWidget {
  const CartDetailScreen({Key? key}) : super(key: key);

  static const String routeName = '/cart';

  static Future<void> launch({required BuildContext context}) async {
    await Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();
    final cartState = cartBloc.state;

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
                  Chip(label: Text('\$${cartState.totalAmount}')),
                  const SizedBox(width: 8),
                  OrderButton(cartBloc: cartBloc),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: cartState.items.length,
              itemBuilder: (_, index) {
                final item = cartState.products[index];

                return CartDetailItem(
                  productId: item.productId,
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
  const OrderButton({
    required CartBloc cartBloc,
    Key? key,
  })  : _cartBloc = cartBloc,
        super(key: key);
  final CartBloc _cartBloc;

  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> with ProgressState {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: inProgress
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : TextButton(
              onPressed: widget._cartBloc.state.totalAmount == 0.0
                  ? null
                  : () async => _onOrderNowClicked(
                        context: context,
                        cartBloc: widget._cartBloc,
                      ),
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

  Future<void> _onOrderNowClicked({
    required BuildContext context,
    required CartBloc cartBloc,
  }) async {
    showProgress(show: true);
    final repository = locator.get<IOrdersRepository>();

    await repository
        .add(
          cartBloc.state.products,
          cartBloc.state.totalAmount,
        )
        .then(
          (_) {
            cartBloc.add(const CartEvent.clear());
            ProductsOverviewScreen.launch(context: context);
          },
        )
        .onErrorMessage(context)
        .whenComplete(() => showProgress(show: false));
  }
}
