import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/cart/bloc/cart_bloc.dart';
import 'package:flutter_shop/common/data/model/product.dart';

class PopularProductDescriptionCard extends StatelessWidget {
  const PopularProductDescriptionCard({
    Key? key,
    required Product product,
  })  : _product = product,
        super(key: key);

  final Product _product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 36, right: 36, bottom: 20),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 5,
            offset: Offset(-5, 0),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 5,
            offset: Offset(5, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _product.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'price: \$${_product.price}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () => _onAddToCardClicked(
              context: context,
              product: _product,
            ),
          ),
        ],
      ),
    );
  }

  void _onAddToCardClicked({
    required BuildContext context,
    required Product product,
  }) {
    final cartBloc = context.read<CartBloc>();
    cartBloc.add(CartEvent.addProduct(
      productId: product.id,
      title: product.title,
      price: product.price,
    ));
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: const Text('Add product to card'),
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: () {
              cartBloc.add(CartEvent.reduceQuantityOrRemoveProduct(product.id));
            },
          ),
        ),
      );
  }
}
