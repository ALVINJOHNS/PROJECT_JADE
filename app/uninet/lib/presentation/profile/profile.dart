import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/imageupload.dart';

import 'package:uninet/presentation/profile/posts.dart';
import 'package:uninet/presentation/profile/updates.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                },
                child: CircleAvatar(
                  backgroundColor: kwhite,
                  radius: 60,
                  backgroundImage: NetworkImage(
                      "https://img.people-group.com/images/Leadership/anupam-mittal.jpg"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Alvin Johns",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Flutter Dev",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      "Cheif Flutter developer at ",
                    ),
                    Text(
                      "PRODDEC CEC",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "intern at ",
                    ),
                    Text(
                      "Tinkerhub",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Connect",
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primarycolor)),
                    )),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Message",
                        style: TextStyle(color: primarycolor),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(child: ProfileTabView()),
        ],
      ),
    );
  }
}

class ProfileTabView extends StatefulWidget {
  const ProfileTabView({super.key});

  @override
  State<ProfileTabView> createState() => _ProfileTabViewState();
}

class _ProfileTabViewState extends State<ProfileTabView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int now = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          width: double.infinity,
          child: TabBar(
            tabs: [
              Text(
                'Posts',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              Text(
                'Updates',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ],
            controller: tabController,
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [PostsTab(), UpdatesTab()],
            controller: tabController,
          ),
        )
      ],
    );
  }
}
