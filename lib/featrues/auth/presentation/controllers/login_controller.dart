import 'package:flutter/material.dart';

TextEditingController loginGetEmail = TextEditingController();
TextEditingController loginGetPassword = TextEditingController();
GlobalKey<FormState> formKeyLogin = GlobalKey();


String? loginvalidatorEmail({required String? value}) {
  if (value!.isEmpty) {
    return "Email field empty";
  }else {
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