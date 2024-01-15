import 'package:flutter/material.dart';
import 'package:test2/page/home_page.dart';
import 'package:test2/page/login_page.dart';
import 'package:test2/widgets/bottom_nav.dart';
import 'page/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAaTw4SYZTcvgl66e7MwNOyLvp1lFD8r94",
      appId: "1:351276634617:android:bbe52180ffffaa8ac2ad28",
      messagingSenderId: "351276634617",
      projectId: "talentrev2",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy',
      ),
      home: SafeArea(
        child: SplashPage(),
      ),
    );
  }
}
