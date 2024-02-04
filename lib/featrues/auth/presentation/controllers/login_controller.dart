import '../../data/repository/login/login_screen_api.dart';
import 'package:flutter/material.dart';

TextEditingController loginGetEmail = TextEditingController();
TextEditingController loginGetPassword = TextEditingController();
GlobalKey<FormState> formKeyLogin = GlobalKey();

String? loginvalidatorEmail({required String? value}) {
  if (value!.isEmpty) {
    return "Email field empty";
  } else {
    return null;
  }
}

String? loginvalidatorpassword({required String? value}) {
  if (value!.isEmpty) {
    return "Password field empty";
  } else {
    return null;
  }
}

Future<void> loginWithAccuont({
  required String emailAddress,
  required String password,
  required BuildContext context,
}) async {
  LoginScreenApi().loginWithAccuont(
      emailAddress: emailAddress, password: password, context: context,);
}
