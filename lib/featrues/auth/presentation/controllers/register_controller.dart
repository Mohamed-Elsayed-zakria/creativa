import '../../data/repository/register/register_screen_api.dart';
import 'package:flutter/material.dart';

final TextEditingController registerGetEmail = TextEditingController();
final TextEditingController registerGetPassword = TextEditingController();
final TextEditingController registerGetRetypePassword = TextEditingController();

final GlobalKey<FormState> formKeyRegister = GlobalKey();

String? registervalidatorEmail({required String? value}) {
  if (value!.isEmpty) {
    return "Email field empty";
  } else {
    return null;
  }
}

String? registervalidatorpassword({required String? value}) {
  if (value!.isEmpty) {
    return "Password field empty";
  } else if (value.length < 8) {
    return 'Password must be greater than or equal to 8 characters';
  } else {
    return null;
  }
}

String? registervalidatorConfirmPassword({required String? value}) {
  if (value!.isEmpty) {
    return "Confirm password Field Empty";
  } else if (registerGetPassword.text != registerGetRetypePassword.text) {
    return "Password does not match";
  } else {
    return null;
  }
}

Future<void> createNewAccount({
  required String emailAddress,
  required String password,
  required BuildContext context,
}) async {
  RegisterScreenApi().createNewAccount(
    emailAddress: emailAddress,
    password: password,
    context: context,
  );
}
