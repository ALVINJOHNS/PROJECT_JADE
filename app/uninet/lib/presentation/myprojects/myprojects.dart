import 'package:flutter/material.dart';

import 'package:uninet/presentation/myprojects/widgets/exploreProjectsWidget.dart';
import 'package:uninet/presentation/myprojects/widgets/myProjectsWidget.dart';

class MyProjectsScreen extends StatelessWidget {
  const MyProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [MyProjectsWidget(), ExploreProjectsWidget()],
          ),
        ),
      ),
    );
  }
}
