import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/core/constants/strings.dart';
import 'package:uninet/domain/signup/signup_respo/signup_respo.dart';
import 'package:uninet/presentation/home/home.dart';

void signupuser(
    {required String email,
    required String password,
    required String username,
    required BuildContext context}) async {
  final resp = await Dio(BaseOptions())
      .post('''$baseURL/register_user/$email/$username/$username/ / ''');
  final SignupRespo response = SignupRespo.fromJson(resp.data);
  log('${response.id}');
  Uid = response.id;
  final sharedpre = await SharedPreferences.getInstance();
  sharedpre.setString(uidStoreKey, Uid);
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
      (route) => false);
}
