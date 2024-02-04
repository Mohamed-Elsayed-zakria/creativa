import 'package:flutter/material.dart';

abstract class RegisterScreenRepo {
  Future<void> createNewAccount({
    required String emailAddress,
    required String password,
   required BuildContext context,
  });
}
