import '../../../../../../core/widgets/custom_form_field.dart';
import '../../../controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginDataTaking extends StatelessWidget {
  const LoginDataTaking({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyLogin,
      child: Column(
        children: [
          CustomFormField(
            controller: loginGetEmail,
            validator: (value) => loginvalidatorEmail(value: value),
            label: 'Email',
            hintText: 'Enter your Email',
            prefixIcon: const Icon(Icons.email_outlined),
            keyboardType: TextInputType.emailAddress,
          ),
          CustomFormField(
            controller: loginGetPassword,
            validator: (value) => loginvalidatorpassword(value: value),
            obscureText: true,
            label: 'Password',
            hintText: 'Enter your Password',
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
