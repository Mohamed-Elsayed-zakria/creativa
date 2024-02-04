import 'package:createva/featrues/main_home/presentation/views/main_home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:createva/firebase_options.dart';
import 'package:flutter/material.dart';
import 'core/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        colorScheme: ColorScheme.fromSeed(
          background: AppColors.kSurfaceColor,
          seedColor: AppColors.kPrimaryColor,
          surfaceTint: AppColors.kSurfaceColor,
        ),
        useMaterial3: true,
      ),
      home: const MainHomeView(),
    );
  }
}
