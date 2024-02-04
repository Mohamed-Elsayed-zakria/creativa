import '../../../data/model/category_model.dart';
import '../../../../../core/screen_size.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    final size = sizeScreen(context: context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 130,
          width: size.width * .5,
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    categoryModel.title,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    categoryModel.category,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -60,
          right: 16,
          child: SizedBox(
            height: 100,
            width: size.width * .3,
            child: Image.network(
              categoryModel.image,
            ),
          ),
        ),
      ],
    );
  }
}
