import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/presentation/groups/groupsscreen.dart';
import 'package:uninet/presentation/groups/subscreens/viewgroupscreen.dart';
import 'package:uninet/presentation/mainmenu/mainmenu.dart';
import 'package:uninet/presentation/myprojects/myprojects.dart';
import 'package:uninet/presentation/profile/profile.dart';
import 'package:uninet/presentation/search/seachscreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ValueNotifier<int> pagenotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: pagenotifier,
          builder: (context, newIndex, _) {
            return IndexedStack(
              index: newIndex,
              children: [
                MainMenuScreen(),
                MyProjectsScreen(),
                SearchScreen(),
                GroupsScreen(),
                ProfileScreen(),
              ],
            );
          }),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: pagenotifier,
          builder: (context, newIndex, _) {
            return BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.home,
                      color: kblack,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.doc_chart_fill,
                      color: kblack,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.search,
                      color: kblack,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.group_solid,
                      color: kblack,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.person,
                      color: kblack,
                    ),
                    label: ''),
              ],
              onTap: (value) {
                pagenotifier.value = value;
                pagenotifier.notifyListeners();
              },
              currentIndex: newIndex,
            );
          }),
    );
  }
}
