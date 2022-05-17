// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future signIn(String EMAIL, String PASSWORD) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: EMAIL, password: PASSWORD);

    print("Logged in");
  } on FirebaseAuthException catch (e) {
    print(e);
  }
}

Future signUp(String EMAIL, String PASSWORD) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: EMAIL, password: PASSWORD);
    print("Created account");
  } on FirebaseAuthException catch (e) {
    print(e);
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
