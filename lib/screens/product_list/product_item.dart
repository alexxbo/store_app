import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/common/data/auth.dart';
import '/common/data/cart.dart';
import '/common/data/model/product.dart';
import '/screens/product_detail/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = context.read<Product>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () => ProductDetailScreen.launch(
          context: context,
          productId: product.id,
        ),
        child: GridTile(
          footer: GridTileBar(
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black54,
            leading: IconButton(
              icon: Consumer<Product>(
                builder: (_, value, __) {
                  return Icon(
                    value.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    color: Theme.of(context).colorScheme.onSecondary,
                  );
                },
              ),
              onPressed: () => _setFavorite(context, product),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              onPressed: () => _onAddToCardClicked(
                context: context,
                product: product,
              ),
            ),
          ),
          child: Hero(
            tag: product.id,
            child: FadeInImage(
              placeholderFit: BoxFit.cover,
              placeholder:
                  const AssetImage('assets/images/product_placeholder.png'),
              image: NetworkImage(product.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  void _setFavorite(BuildContext context, Product product) {
    final auth = context.read<Auth>();
    product.setFavorite(auth.token, auth.userId);
  }

  void _onAddToCardClicked({
    required BuildContext context,
    required Product product,
  }) {
    final cart = context.read<Cart>();
    cart.add(product.id, product.title, product.price);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Add product to card'),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: () {
          cart.removeSingle(product.id);
        },
      ),
    ));
  }
}
