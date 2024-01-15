import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test2/widgets/customsnackBar.dart';

Future<void> signInwithGoogle({
  required BuildContext context,
}) async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
  } on Exception catch (e) {
    if (e is FirebaseAuthException) {
      // ignore: use_build_context_synchronously
      customsnackBar(context, e.message.toString(), Colors.red);
    }
  }
}
