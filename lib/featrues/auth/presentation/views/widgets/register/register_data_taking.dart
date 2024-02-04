import '../../../../../../core/widgets/custom_form_field.dart';
import '../../../controllers/register_controller.dart';
import 'package:flutter/material.dart';


class RegisterDataTaking extends StatelessWidget {
  const RegisterDataTaking({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyRegister,
      child: Column(
        children: [
          CustomFormField(
            validator: (value) => registervalidatorEmail(value: value),
            controller: registerGetEmail,
            label: 'Email',
            hintText: 'Enter your Email',
            prefixIcon: const Icon(Icons.email_outlined),
            keyboardType: TextInputType.emailAddress,
          ),
          CustomFormField(
            validator: (value) => registervalidatorpassword(value: value),
            obscureText:true ,
            controller: registerGetPassword,
            label: 'Password',
            hintText: 'Enter your Password',
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            keyboardType: TextInputType.visiblePassword,
          ),
          CustomFormField(
            validator: (value) =>
                registervalidatorConfirmPassword(value: value),
            obscureText: true,
            controller: registerGetRetypePassword,
            label: 'Confirm password',
            hintText: 'Reconfirm your password',
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}
