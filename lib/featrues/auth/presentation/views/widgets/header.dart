import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../../../core/screen_size.dart';
import '../../../../../core/colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final size = sizeScreen(context: context);
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      height: size.height * .25,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: AppColors.kPrimaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            size: size.width * .25,
            IconlyBroken.buy,
            color: AppColors.kSurfaceColor,
          ),
          const SizedBox(height: 15),
          const Text(
            'Creativa',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.kSurfaceColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
