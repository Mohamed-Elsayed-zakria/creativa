import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String productName;
  final String productDescription;
  final void Function()? onPressed;
  const ProductItem({
    super.key,
    required this.productName,
    required this.productDescription,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productName),
      subtitle: Text(productDescription),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
