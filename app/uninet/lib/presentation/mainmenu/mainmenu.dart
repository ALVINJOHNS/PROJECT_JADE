import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/presentation/chats/chatsscreen.dart';
import 'package:uninet/presentation/mainmenu/widgets/makeapostscreen.dart';
import 'package:uninet/presentation/mainmenu/widgets/postwidget.dart';
import 'package:uninet/presentation/mainmenu/widgets/scaffoldtitle.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          snap: false,
          floating: true,
          expandedHeight: 80.0,
          backgroundColor: kwhite,
          flexibleSpace: FlexibleSpaceBar(
            title: Row(
              children: [
                kwidth10,
                ScaffoldTitle(),
                Spacer(),
                GestureDetector(
                  child: Icon(
                    CupertinoIcons.bubble_left_bubble_right,
                    size: 20,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChatsScreen(),
                    ));
                  },
                ),
                kwidth10,
              ],
            ),
            centerTitle: true,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            child: Center(
              child: MakePost(),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return PostWidget();
            },
            childCount: 20,
          ),
        ),
      ],
    ));
  }
}

class MakePost extends StatelessWidget {
  const MakePost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.add_circled_solid),
                kwidth10,
                Text(
                  'make a post',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MakeAPostScreen(),
          ));
        },
      ),
    );
  }
}
