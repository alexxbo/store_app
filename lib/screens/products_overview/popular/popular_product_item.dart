import 'package:flutter/material.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/screens/products_overview/popular/popular_product_desc.dart';

class PopularProductItem extends StatelessWidget {
  const PopularProductItem({Key? key, required Product product})
      : _product = product,
        super(key: key);

  final Product _product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildProductImage(_product.imageUrl),
        _buildProductDesc(_product),
      ],
    );
  }

  Widget _buildProductImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
      ),
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 170,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FadeInImage(
          placeholderFit: BoxFit.cover,
          placeholder:
              const AssetImage('assets/images/product_placeholder.png'),
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProductDesc(Product product) {
    return Builder(
      builder: (context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: PopularProductDescriptionCard(
            product: _product,
          ),
        );
      },
    );
  }
}
