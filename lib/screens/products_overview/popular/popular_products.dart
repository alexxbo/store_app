import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/common/data/model/product.dart';
import 'package:flutter_shop/screens/products_overview/popular/popular_product_item.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({
    Key? key,
    required List<Product> products,
  })  : _products = products,
        super(key: key);

  final List<Product> _products;

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  static const _scaleFactor = 0.85;
  static const _height = 170;

  final PageController controller =
      PageController(viewportFraction: _scaleFactor);
  double _currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() => _currentPageValue = controller.page ?? 0.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              maxHeight: 250,
              minWidth: double.infinity,
            ),
            width: 250,
            child: PageView.builder(
              controller: controller,
              itemCount: widget._products.length,
              itemBuilder: (context, index) {
                return Transform(
                  transform: _prepareMatrix(index),
                  child: PopularProductItem(
                    product: widget._products[index],
                  ),
                );
              },
            ),
          ),
          DotsIndicator(
            dotsCount: widget._products.length,
            position: _currentPageValue,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  Matrix4 _prepareMatrix(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      final currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      final currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      final currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      final currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      final currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      final currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      const currScale = _scaleFactor;
      const currTrans = _height * (1 - _scaleFactor) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 1);
    }

    return matrix;
  }
}
