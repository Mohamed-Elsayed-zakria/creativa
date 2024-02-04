import 'package:flutter/material.dart';
import '../../../core/assets.dart';
import '../../../core/screen_size.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = sizeScreen(context: context);
    
    return Center(
      child: Image.asset(
        Assets.logo,
        height: size.width * .45,
        width: size.width * .5,
      ),
    );
  }
}
