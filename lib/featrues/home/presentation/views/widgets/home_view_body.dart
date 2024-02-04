import 'package:flutter/material.dart';
import '../../../data/models/product_model.dart';
import '../../controllers/get_product_service.dart';
import 'product_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: getAllProduct(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          List<ProductModel> products = snapshot.data!;
          return Padding(
            padding:
                const EdgeInsets.only(top: 80, right: 8, left: 8, bottom: 8),
            child: GridView.builder(
              clipBehavior: Clip.none,
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 85,
                childAspectRatio: 1.5,
                crossAxisCount: 2,
                crossAxisSpacing: 4,
              ),
              itemBuilder: (context, index) => ProductItem(
                product: products[index],
              ),
            ),
          );
        } else {
          return const Text("Error");
        }
      },
    );
  }
}
