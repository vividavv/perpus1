import 'package:flutter/material.dart';
import 'package:perpus1/screens/signin/signin.dart';
import 'package:perpus1/screens/splash/splashScreen.dart';
import 'package:perpus1/widgets/nav/navbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SplashScreen(),
      },
    );
  }
}