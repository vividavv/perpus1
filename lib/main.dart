import 'package:flutter/material.dart';
import 'package:perpus1/screens/signin/signin.dart';


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
        '/':(context) => SignInScreen(),
      },
    );
  }
}