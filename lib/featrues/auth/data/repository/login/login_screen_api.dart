import '../../../../main_home/presentation/views/main_home_view.dart';
import '../../../presentation/controllers/login_controller.dart';
import '../../../../../core/firebase_servise.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'login_screen_repo.dart';

class LoginScreenApi extends LoginScreenRepo {
  @override
  Future<void> loginWithAccuont({
    required String emailAddress,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await FirebaseService.auth
          .signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      )
          .then((value) async {
        loginGetEmail.clear();
        loginGetPassword.clear();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainHomeView(),
          ),
        );
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(
          msg: 'No user found for that email.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(
          msg: 'Wrong password provided for that user.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      }
    }
  }
}
