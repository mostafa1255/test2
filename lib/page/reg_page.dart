import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test2/page/login_page.dart';

import '../core/color.dart';
import '../widgets/bottom_nav.dart';

class RegPage extends StatelessWidget {
  RegPage({Key? key}) : super(key: key);
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
                "Registr",
                style: TextStyle(
                    fontSize: 30, color: green, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Name",
                      fillColor: green,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
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
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "phone",
                      fillColor: green,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Age",
                      fillColor: green,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
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
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "RePassword",
                      fillColor: green,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              const Spacer(),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: green, borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: const [
                      Text("Sign Up", style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Icon(Icons.login),
                    ],
                  ),
                ),
                onTap: () async {
                  await auth.createUserWithEmailAndPassword(
                    email: emailControler.text,
                    password: passworControler.text,
                  );
                  auth.currentUser!.sendEmailVerification();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) =>  LoginPage()));


                 
                },
              )
            ],
          ),
        ));
  }
}
