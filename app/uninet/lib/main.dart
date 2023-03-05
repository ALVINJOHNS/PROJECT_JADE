import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/presentation/auth/login/loginscreen.dart';
import 'package:uninet/presentation/home/home.dart';

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
        primaryColor: kblack,
      ),
      home: HomeScreen(),
    );
  }
}
