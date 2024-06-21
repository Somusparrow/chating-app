


import 'dart:ffi';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authmethods {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  singUpUser({
    required String email, required String password, required String username, required String bio, required Uint8List file,
  }) {
    String res = "some error occurred";
    try {
      if(email.isNotEmpty||password.isNotEmpty||username.isNotEmpty||bio.isNotEmpty||file!=null){
        auth.createUserWithEmailAndPassword(email: email, password: password);
      }

    } catch (e) {
      return e.toString();
    }
    return res;
  }
}