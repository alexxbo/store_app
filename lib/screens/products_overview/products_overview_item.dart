import 'package:flutter/material.dart';
import 'package:flutter_shop/common/cart/bloc/cart_bloc.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/screens/product_detail/product_detail_screen.dart';
import 'package:flutter_shop/screens/products_overview/bloc/products_overview_bloc.dart';
import 'package:provider/provider.dart';

class ProductsOverviewItem extends StatelessWidget {
  const ProductsOverviewItem({
    required final Product product,
    Key? key,
  })  : _product = product,
        super(key: key);

  final Product _product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () async => _openProductDetail(context, _product),
        child: GridTile(
          footer: GridTileBar(
            title: Text(
              _product.title,
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black54,
            leading: IconButton(
              icon: Icon(
                _product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              onPressed: () => _setFavorite(context, _product),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              onPressed: () => _onAddToCardClicked(
                context: context,
                product: _product,
              ),
            ),
          ),
          child: Hero(
            tag: _product.id,
            child: FadeInImage(
              placeholderFit: BoxFit.cover,
              placeholder:
                  const AssetImage('assets/images/product_placeholder.png'),
              image: NetworkImage(_product.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _openProductDetail(BuildContext context, Product product) async {
    await ProductDetailScreen.launch(
      context: context,
      productId: product.id,
    );
  }

  void _setFavorite(BuildContext context, Product product) {
    context
        .read<ProductsOverviewBloc>()
        .add(ProductsOverviewEvent.onFavoriteToggled(product: product));
  }

  void _onAddToCardClicked({
    required BuildContext context,
    required Product product,
  }) {
    final cartBloc = context.read<CartBloc>()
      ..add(CartEvent.addProduct(
        productId: product.id,
        title: product.title,
        price: product.price,
      ));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Add product to card'),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: () {
          cartBloc.add(CartEvent.reduceQuantityOrRemoveProduct(product.id));
        },
      ),
    ));
  }
}
