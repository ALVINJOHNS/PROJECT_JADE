import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CurrentMembersWidget extends StatelessWidget {
  const CurrentMembersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                    "https://img.people-group.com/images/Leadership/anupam-mittal.jpg"),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Alvin Johns",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        );
      }),
    );
  }
}
