import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/presentation/auth/login/loginscreen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.asset('assets/images/signupimg.png'),
              ),
              kheight20,
              kheight10,
              Text(
                'Sign Up',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: kblack.withOpacity(.68),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kheight20,
              _IconAndFieldEmail(
                  size: size, text: 'Email ID', iconData: CupertinoIcons.mail),
              kheight10,
              _IconAndFieldEmail(
                size: size,
                text: 'Name',
                iconData: CupertinoIcons.person,
              ),
              kheight10,
              _IconAndFieldPassword(size: size),
              kheight20,
              SizedBox(
                width: size.width,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primarycolor),
                  ),
                  child: const Text('Sign Up'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Joined us before? '),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                      },
                      child: const Text('Sign In'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _IconAndFieldEmail extends StatelessWidget {
  const _IconAndFieldEmail({
    required this.size,
    required this.text,
    required this.iconData,
  });
  final String text;
  final IconData iconData;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: kblack.withOpacity(0.6),
        ),
        kwidth20,
        SizedBox(
          width: size.width * 0.7,
          child: TextFormField(
            cursorColor: kblack,
            decoration: InputDecoration(
              hintText: text,
              focusColor: kblack,
            ),
          ),
        ),
      ],
    );
  }
}

class _IconAndFieldPassword extends StatelessWidget {
  _IconAndFieldPassword({
    required this.size,
  });
  final ValueNotifier<bool> obscureTextNotifier = ValueNotifier(true);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          CupertinoIcons.lock,
          color: kblack.withOpacity(0.6),
        ),
        kwidth20,
        SizedBox(
          width: size.width * 0.7,
          child: ValueListenableBuilder(
              valueListenable: obscureTextNotifier,
              builder: (context, newValue, _) {
                return TextFormField(
                  cursorColor: kblack,
                  obscureText: newValue,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffix: Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          obscureTextNotifier.value =
                              !obscureTextNotifier.value;
                        },
                        child: Icon(
                          newValue
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      );
                    }),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
