import '/shared/screen_size.dart';
import '/shared/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import '../../main_home/main_home_view.dart';
import '/logic/login_logic.dart';
import 'login_data_taking.dart';
import 'header.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const LoginDataTaking(),
                      CustomButton(
                        text: 'Login',
                        onPressed: () {
                          if (formKeyLogin.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainHomeView(),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                  CustomButton(
                    text: 'Create new account',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
