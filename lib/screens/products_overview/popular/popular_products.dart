import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Container(
        color: Colors.grey[300],
        child: const Center(
          child: Text('products title'),
        ),
      ),
    );
  }
}
