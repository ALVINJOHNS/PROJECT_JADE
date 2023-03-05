import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecruitmentRequestWidget extends StatelessWidget {
  const RecruitmentRequestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 0, 0, 0))),
        child: Column(
          children: List.generate(3, (index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.people-group.com/images/Leadership/anupam-mittal.jpg"),
                ),
                Text("Sreelashmi D"),
                SizedBox(),
                TextButton(
                  onPressed: () {},
                  child: Text('see profile'),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
