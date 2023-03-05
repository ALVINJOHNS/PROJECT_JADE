import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/domain/login/login.dart';
import 'package:uninet/presentation/home/home.dart';
import 'package:uninet/presentation/auth/signup/signupscreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 70, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: size.width * 0.6,
                child: Image.asset('assets/images/loginimg.png'),
              ),
              kheight20,
              kheight10,
              Text(
                'Login',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: kblack.withOpacity(.68),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kheight20,
              _IconAndFieldEmail(
                size: size,
                controller: emailController,
              ),
              kheight10,
              _IconAndFieldPassword(
                size: size,
                controller: passwordController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password?'),
                  )
                ],
              ),
              kheight10,
              SizedBox(
                width: size.width,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                        (route) => false);
                    return;
                    if (emailController.text == '') {
                      return;
                    }
                    if (passwordController.text == '') {
                      return;
                    }
                    loginUser(
                        email: emailController.text,
                        password: passwordController.text,
                        context: context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primarycolor),
                  ),
                  child: const Text('Login'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New to UniNet ?'),
                  TextButton(
                      onPressed: () {
                        FocusNode().dispose();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                      },
                      child: const Text('Sign Up'))
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
    required this.controller,
  });

  final Size size;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          CupertinoIcons.mail,
          color: kblack.withOpacity(0.6),
        ),
        kwidth20,
        SizedBox(
          width: size.width * 0.7,
          child: TextFormField(
            controller: controller,
            cursorColor: kblack,
            decoration: const InputDecoration(
              hintText: 'Email ID',
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
    required this.controller,
  });
  final ValueNotifier<bool> obscureTextNotifier = ValueNotifier(true);
  final Size size;
  final TextEditingController controller;
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
                  controller: controller,
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
