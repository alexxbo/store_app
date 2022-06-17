import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../common/cart/bloc/cart_bloc.dart';
import '../../common/orders/repository/orders_repository.dart';
import '../../common/service_locator/injection_container.dart';
import '../../util/extensions.dart';
import '../../widgets/mixins/progress.dart';
import '../products_overview/products_overview.dart';
import 'cart_detail_item.dart';

//TODO refactor: make it simple
class CartDetailScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static void launch({required BuildContext context}) {
    Navigator.of(context).pushNamed(routeName);
  }

  const CartDetailScreen({Key? key}) : super(key: key);

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
                  id: item.product.id,
                  productId: item.productId,
                  title: item.product.title,
                  quantity: item.product.quantity,
                  price: item.product.price,
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
  final CartBloc _cartBloc;

  const OrderButton({Key? key, required CartBloc cartBloc})
      : _cartBloc = cartBloc,
        super(key: key);

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
                  : () => _onOrderNowClicked(
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

  void _onOrderNowClicked({
    required BuildContext context,
    required CartBloc cartBloc,
  }) {
    showProgress(true);

    //TODO refactor: implements cart detail bloc
    final IOrdersRepository repository = locator.get<IOrdersRepository>();

    repository
        .add(
          cartBloc.state.products.map((item) => item.product).toList(),
          cartBloc.state.totalAmount,
        )
        .then(
          (_) {
            cartBloc.add(const CartEvent.clear());
            ProductsOverviewScreen.launch(context: context);
          },
        )
        .onErrorMessage(context)
        .whenComplete(() => showProgress(false));
  }
}
