import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter/material.dart';
import 'widgets/home_view_body.dart';
import '/shared/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
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
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.notification),
            label: 'Notice',
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
      body: HomeViewBody(pageNumber: pageNumber),
    );
  }
}
