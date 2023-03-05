import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/presentation/commonwidgets/chatscreen/chatscreen.dart';

class ViewGroupScreen extends StatelessWidget {
  const ViewGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 9 / 16,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://dynamics365cdn.azureedge.net/cvt-866576909c8b46a7b17bc12bf42261c70929fa28f957639c21da6be7897410b0/pictures/pages/human-resources/overview/Panel_1_Hero.jpg',
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [kblack, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter),
                  ),
                ),
                Text(
                  'Java Screipt Community',
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          kheight20,
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1)),
                    height: 40,
                    width: 160,
                    child: Center(
                      child: Text(
                        '130 members',
                        style: TextStyle(
                          color: kblack,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  kheight20,
                  Text(
                    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut ipsum in mauris lacinia pellentesque. Maecenas tristique odio quis risus volutpat, a semper nibh hendrerit. Sed commodo, enim eu sollicitudin malesuada, neque ipsum semper augue, quis sagittis augue lacus sit amet mi. Aenean fringilla tincidunt ''',
                    style: TextStyle(
                      wordSpacing: 3,
                      color: kblack,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  kheight10,
                  Text(
                    'Admins',
                    style: TextStyle(
                      color: kblack,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kheight10,
                  Column(
                    children: List.generate(3, (index) => _AdminsNameWidget()),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class _AdminsNameWidget extends StatelessWidget {
  const _AdminsNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 21,
        ),
        kwidth10,
        Text('Name Admin'),
        kwidth10,
        Icon(
          CupertinoIcons.circle_fill,
          size: 5,
        ),
        kwidth10,
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChatScreen(),
            ));
          },
          child: Text('Message'),
        )
      ],
    );
  }
}
