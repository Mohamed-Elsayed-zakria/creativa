import 'package:flutter/material.dart';

abstract class LoginScreenRepo {
  Future<void> loginWithAccuont({
    required String emailAddress,
    required String password,
   required BuildContext context,

  });
}
