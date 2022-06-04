// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:website/libary.dart';

Future signIn(String EMAIL, String PASSWORD) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: EMAIL, password: PASSWORD);
    isSignedIn = true;
    print("Logged in");
  } on FirebaseAuthException catch (e) {
    print(e);
  }
}

signUp(String EMAIL, String PASSWORD) {
  try {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: EMAIL, password: PASSWORD);
    isSignedIn = true;
    print("Created account");
    return true;
  } on FirebaseAuthException catch (error) {
    print(error);
    return error;
  }
}

class GoogleSignInProvider extends ChangeNotifier {
  final googleSigniIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googleLogIn() async {
    final googleUser = await googleSigniIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);

    notifyListeners();
  }
}
