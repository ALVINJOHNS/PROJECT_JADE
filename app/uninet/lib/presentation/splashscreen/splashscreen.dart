import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/presentation/auth/login/loginscreen.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final ValueNotifier<bool> opacityNotifier = ValueNotifier(false);

  @override
  void initState() {
    spashscreentime(context);
    // TODO: implement initState
    super.initState();
  }

  spashscreentime(context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => LoginScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      opacityNotifier.value = true;
      opacityNotifier.notifyListeners();
    });
    return Scaffold(
      backgroundColor: kwhite,
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: opacityNotifier,
            builder: (context, newOpacity, _) {
              return AnimatedOpacity(
                opacity: newOpacity ? 1 : 0,
                duration: Duration(milliseconds: 1500),
                child: Text(
                  'UniNet',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
