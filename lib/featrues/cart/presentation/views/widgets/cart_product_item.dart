import '../../../../home/data/models/product_model.dart';
import 'package:flutter/material.dart';

class CartProductItem extends StatelessWidget {
  final void Function()? onPressedAdd;
  final void Function()? onPressedRemove;
  final ProductModel cartProduct;

  const CartProductItem({
    super.key,
    required this.onPressedAdd,
    required this.onPressedRemove,
    required this.cartProduct,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(cartProduct.image),
      ),
      title: Text(
        cartProduct.title,
        style: const TextStyle(fontSize: 18),
        maxLines: 1,
      ),
      subtitle: Text(
        cartProduct.price.toString(),
        style: const TextStyle(fontSize: 16),
        maxLines: 1,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: onPressedAdd,
            icon: const Icon(Icons.add),
          ),
          const Text(
            '5',
            style: TextStyle(fontSize: 16),
          ),
          IconButton(
            onPressed: onPressedRemove,
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
