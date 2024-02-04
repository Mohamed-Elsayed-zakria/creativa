import '../../../../main_home/presentation/views/main_home_view.dart';
import '../../../presentation/controllers/register_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../../core/firebase_servise.dart';
import 'package:flutter/material.dart';
import 'register_screen_repo.dart';

class RegisterScreenApi extends RegisterScreenRepo {
  @override
  Future<void> createNewAccount({
    required String emailAddress,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await FirebaseService.auth
          .createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      )
          .then((value) {
        registerGetEmail.clear();
        registerGetPassword.clear();
        registerGetRetypePassword.clear();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainHomeView(),
          ),
        );
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
          msg: "account already exists",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: '$e.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }
}
