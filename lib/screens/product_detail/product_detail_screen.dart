import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/common/products/repository/products_repository.dart';
import 'package:flutter_shop/common/service_locator/injection_container.dart';
import 'package:flutter_shop/screens/product_detail/bloc/product_detail_bloc.dart';
import 'package:flutter_shop/widgets/error_view.dart';
import 'package:flutter_shop/widgets/progress.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = '/product_details';

  static Future<void> launch({
    required BuildContext context,
    required String productId,
  }) async {
    Navigator.of(context).pushNamed(
      routeName,
      arguments: productId,
    );
  }

  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final repository = locator.get<IProductsRepository>();

    return BlocProvider(
      create: (context) => ProductDetailBloc(repository)
        ..add(ProductDetailEvent.onStarted(productId)),
      child: const ProductDetailView(),
    );
  }
}

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        builder: (context, state) => state.when(
          progress: () => const ProgressWidget(),
          error: (message) => ErrorView(message: message),
          success: (product) => CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(product.title),
                  background: Hero(
                    tag: product.id,
                    child: Image.network(
                      product.imageUrl,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(height: 12),
                    Text(
                      '\$${product.price}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        product.description,
                        style: const TextStyle(),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
