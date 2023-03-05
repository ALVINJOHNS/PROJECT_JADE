import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/presentation/myprojects/createProjectScreen/createProjectScreen.dart';
import 'package:uninet/presentation/myprojects/widgets/myProjectButtonWidget.dart';

class MyProjectsWidget extends StatelessWidget {
  const MyProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .04,
                ),
                Text(
                  "My Projects",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateProjectScreen()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 9,
                    child: Icon(
                      CupertinoIcons.plus,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
            children: List.generate(5, (ind) {
          return MyProjectButtonWidget(
            index: ind,
            title1: "V-CEC",
          );
        }))
      ],
    );
  }
}
