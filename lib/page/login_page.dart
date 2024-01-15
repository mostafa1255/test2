import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test2/widgets/resetPassword.dart';
import '../core/color.dart';
import '../widgets/CustomForgetPasswordAlertDialog.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/signInwithGoogle.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailControler = TextEditingController();
  final passworControler = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 30, color: green, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            SizedBox(
              child: TextField(
                controller: emailControler,
                decoration: InputDecoration(
                    labelText: "Email",
                    fillColor: green,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              child: TextField(
                controller: passworControler,
                decoration: InputDecoration(
                    labelText: "Password",
                    fillColor: green,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () async {
                await auth.signInWithEmailAndPassword(
                  email: emailControler.text,
                  password: passworControler.text,
                );
                if (auth.currentUser!.emailVerified) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const BottomNavBar()));
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomForgetPasswordAlertDialog();
                    },
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: green, borderRadius: BorderRadius.circular(15)),
                child: const Row(
                  children: [
                    Text("Login", style: TextStyle(fontSize: 18)),
                    Spacer(),
                    Icon(Icons.login),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.red[700],
              textColor: Colors.white,
              onPressed: () async {
                await signInwithGoogle(context: context);
              },
              // Use the new Google Sign-In function
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login With Google"),
                ],
              ),
            ),
            TextButton(
              onPressed: () async {
                await resetPassword(
                    email: emailControler.text, context: context);
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: black.withOpacity(0.4),
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
