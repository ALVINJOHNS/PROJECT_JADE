import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/presentation/mainmenu/mainmenu.dart';
import 'package:uninet/presentation/auth/signup/signupscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 100, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
              _IconAndFieldEmail(size: size),
              kheight10,
              _IconAndFieldPassword(size: size),
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
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => MainMenuScreen(),
                    ));
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
                          builder: (context) => const SignUpScreen(),
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
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.email_outlined,
          color: kblack.withOpacity(0.6),
        ),
        kwidth20,
        SizedBox(
          width: size.width * 0.7,
          child: TextFormField(
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
  });
  final ValueNotifier<bool> obscureTextNotifier = ValueNotifier(true);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.lock_outline,
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
