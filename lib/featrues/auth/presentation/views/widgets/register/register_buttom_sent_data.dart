import '../../../../../../core/widgets/custom_buttom.dart';
import '../../../controllers/register_controller.dart';
import 'package:flutter/material.dart';

class RegisterButtomSentData extends StatelessWidget {
  const RegisterButtomSentData({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Register',
      onPressed: () {
        if (formKeyRegister.currentState!.validate()) {
          createNewAccount(
            emailAddress: registerGetEmail.text,
            password: registerGetPassword.text,
          );
        }
      },
    );
  }
}
