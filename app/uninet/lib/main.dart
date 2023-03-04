import 'package:flutter/material.dart';
import 'package:uninet/presentation/login/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Jetbrainmono',
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
