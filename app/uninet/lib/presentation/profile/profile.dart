import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/presentation/profile/posts.dart';
import 'package:uninet/presentation/profile/updates.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_outlined),
          // backgroundColor: Color.fromARGB(20, 131, 201, 194),
          // hoverColor: Color.fromARGB(20, 131, 201, 194),
          //hoverElevation: 0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print("djhkfvsgbd");
              },
              child: CircleAvatar(
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
                      fontFamily: 'JetBrainsMono'),
                ),
                Text(
                  "Flutter Dev",
                  style: TextStyle(fontSize: 25, fontFamily: 'JetBrainsMono'),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
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
                    style: TextStyle(fontFamily: 'JetBrainsMono'),
                  ),
                  Text(
                    "PRODDEC CEC",
                    style: TextStyle(
                      fontFamily: 'JetBrainsMono',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "intern at ",
                    style: TextStyle(fontFamily: 'JetBrainsMono'),
                  ),
                  Text(
                    "Tinkerhub",
                    style: TextStyle(
                      fontFamily: 'JetBrainsMono',
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
                      style: TextStyle(fontFamily: 'JetBrainsMono'),
                    ),
                  )),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(onPressed: () {}, child: Text("Message"))),
            ],
          ),
        ),
        Expanded(child: ProfileTabView()),
      ],
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
          height: 50,
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
