import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test2/widgets/customsnackBar.dart';

Future<void> resetPassword(
    {required String email, required BuildContext context}) async {
  try {
    if (email != "") {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    }
  } on FirebaseAuthException catch (e) {
    // ignore: use_build_context_synchronously
    customsnackBar(context, e.message.toString(), Colors.red);
  }
}
