import '../../../../../../core/widgets/custom_buttom.dart';
import '../../../../../../core/screen_size.dart';
import 'package:flutter/material.dart';
import '../header.dart';
import 'register_buttom_sent_data.dart';
import 'register_data_taking.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
final size = sizeScreen(context: context);
    return Column(
      children: [
        const Header(),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: size.height * .72,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      RegisterDataTaking(),
                      // RegisterUsagePolicy(),
                      RegisterButtomSentData(),
                    ],
                  ),
                  CustomButton(
                    text: 'Login',
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}