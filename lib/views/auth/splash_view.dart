import 'package:createva/views/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'widgets/splash_view_body.dart';
import '/shared/colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginView()),
      ),
    );
    return const Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: SplashViewBody(),
    );
  }
}
