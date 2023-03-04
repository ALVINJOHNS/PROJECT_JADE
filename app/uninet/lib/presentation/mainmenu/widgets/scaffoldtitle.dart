import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';

class ScaffoldTitle extends StatelessWidget {
  const ScaffoldTitle({super.key});

  @override
  Widget build(BuildContext context) {
    if (DateTime.now().hour < 12) {
      return const Text(
        'GOOD MORNING',
        style: TextStyle(color: kblack),
      );
    } else if (DateTime.now().hour < 18) {
      return const Text(
        'GOOD AFTERNOON',
        style: TextStyle(color: kblack),
      );
    } else {
      return const Text(
        'GOOD EVENING',
        style: TextStyle(color: kblack),
      );
    }
  }
}
