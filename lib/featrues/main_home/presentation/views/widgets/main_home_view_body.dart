import 'package:flutter/material.dart';
import '../../../../home/presentation/views/home_view.dart';

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
        Center(
          child: Text(
            'category',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Center(
          child: Text(
            'Cart',
            style: TextStyle(fontSize: 18),
          ),
        ),
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
