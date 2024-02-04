import '../../../../home/data/models/product_model.dart';
import '../../controllers/cart_product_controller.dart';
import 'package:flutter/material.dart';
import 'cart_product_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: getAllOrders(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          List<ProductModel> cartProducts = snapshot.data ?? [];
          return ListView.builder(
            itemCount: cartProducts.length,
            itemBuilder: (context, index) => CartProductItem(
              cartProduct: cartProducts[index],
              onPressedAdd: () {},
              onPressedRemove: () {},
            ),
          );
        } else {
          return const Center(child: Text("Error"));
        }
      },
    );
  }
}
