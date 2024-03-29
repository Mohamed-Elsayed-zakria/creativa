import '../../../../../../core/widgets/custom_buttom.dart';
import '../../../controllers/login_controller.dart';
import '../../../../../../core/screen_size.dart';
import 'package:flutter/material.dart';
import '../../register_view.dart';
import 'login_data_taking.dart';
import '../header.dart';

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
                            loginWithAccuont(
                              context: context,
                              emailAddress: loginGetEmail.text,
                              password: loginGetPassword.text,
                            );
                          }
                        },
                      ),
                    ],
                  ),
                  CustomButton(
                    text: 'Create new account',
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterView(),
                        ),
                      );
                    },
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
