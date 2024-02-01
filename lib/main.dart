import 'package:flutter/material.dart';
import 'views/auth/splash_view.dart';

void main() {
  runApp(const Creativa());
}

class Creativa extends StatelessWidget {
  const Creativa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Creativa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
