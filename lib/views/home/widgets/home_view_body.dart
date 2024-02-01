import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  final int pageNumber;
  const HomeViewBody({
    super.key,
    required this.pageNumber,
  });

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: pageNumber,
      children: const [
        Center(
          child: Text(
            'Home',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Center(
          child: Text(
            'Services',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Center(
          child: Text(
            'Notice',
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
