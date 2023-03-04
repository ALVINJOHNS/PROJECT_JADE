import 'package:flutter/material.dart';
import 'package:uninet/presentation/groups/groupsscreen.dart';
import 'package:uninet/presentation/mainmenu/mainmenu.dart';
import 'package:uninet/presentation/profile/profile.dart';
import 'package:uninet/presentation/search/seachscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GroupsScreen(),
    );
  }
}
