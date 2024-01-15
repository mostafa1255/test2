import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/color.dart';
import 'login_page.dart';
import 'reg_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 25),
          // const Text(
          //   'Let\'s plant with us',
          //   style: TextStyle(
          //     fontSize: 22.0,
          //     letterSpacing: 1.8,
          //     fontWeight: FontWeight.w900,
          //   ),
          // ),
          // const SizedBox(height: 5),
          // const Text(
          //   'Bring nature home',
          //   style: TextStyle(
          //     color: grey,
          //     fontSize: 16,
          //     letterSpacing: 1.8,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          SizedBox(
            height: 450,
            width: 450,
            child: Image.asset('assets/images/logo2.png'),
          ),
          const SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => LoginPage()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => RegPage()));
            },
            child: Text(
              'Create an account',
              style: TextStyle(
                color: black.withOpacity(0.7),
                fontSize: 16,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
