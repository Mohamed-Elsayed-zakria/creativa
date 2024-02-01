import 'package:flutter/material.dart';

import 'product_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ProductItem(
        productName: 'product ${index + 1}',
        productDescription: 'productDescription ${index + 1}',
      ),
    );
  }
}
