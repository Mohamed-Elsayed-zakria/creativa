import '../../../../category/presentation/view/category_view.dart';
import '../../../../home/presentation/views/home_view.dart';
import '../../../../cart/presentation/views/cart_view.dart';
import 'package:flutter/material.dart';

class MainHomeViewBody extends StatelessWidget {
  final int pageNumber;
  const MainHomeViewBody({
    super.key,
    required this.pageNumber,
  });

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: pageNumber,
      children: const [
        HomeView(),
        CategoryView(),
        CartView(),
        Center(
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
