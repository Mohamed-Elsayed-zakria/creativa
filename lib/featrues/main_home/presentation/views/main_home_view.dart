import 'package:flutter_iconly/flutter_iconly.dart';
import 'widgets/main_home_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

class MainHomeView extends StatefulWidget {
  const MainHomeView({super.key});

  @override
  State<MainHomeView> createState() => _MainHomeViewState();
}

class _MainHomeViewState extends State<MainHomeView> {
  int pageNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creativa'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.kPrimaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: pageNumber,
        onTap: (value) {
          setState(() {
            pageNumber = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.category),
            label: 'category',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.buy),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.setting),
            label: 'Settings',
          ),
        ],
      ),
      body: MainHomeViewBody(pageNumber: pageNumber),
    );
  }
}
