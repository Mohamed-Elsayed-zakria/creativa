import '../../controller/category_controller.dart';
import '../../../data/model/category_model.dart';
import 'package:flutter/material.dart';
import 'category_item.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoryModel>>(
      future: fetchAllCategory(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          List<CategoryModel> categoryItems = snapshot.data ?? [];
          return Padding(
            padding:
                const EdgeInsets.only(top: 80, right: 8, left: 8, bottom: 8),
            child: GridView.builder(
              clipBehavior: Clip.none,
              itemCount: categoryItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 85,
                childAspectRatio: 1.5,
                crossAxisCount: 2,
                crossAxisSpacing: 4,
              ),
              itemBuilder: (context, index) => CategoryItem(
                categoryModel: categoryItems[index],
              ),
            ),
          );
        } else {
          return const Center(
            child: Text('Error'),
          );
        }
      },
    );
  }
}
