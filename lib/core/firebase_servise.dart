
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseService {
  static FirebaseAuth auth = FirebaseAuth.instance;

  static User get user => auth.currentUser!;

  static FirebaseFirestore firestore = FirebaseFirestore.instance;

}
