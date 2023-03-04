import 'package:flutter/material.dart';

import 'package:uninet/core/constants/constants.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          _GroupRowWidget(text: 'My Groups'),
          _GroupRowWidget(text: 'Latest'),
          _GroupRowWidget(text: 'Recommendations')
        ],
      ),
    );
  }
}

class _GroupRowWidget extends StatelessWidget {
  const _GroupRowWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight20,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          thickness: 1.5,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(5, (index) => _GroupWidget()),
          ),
        ),
      ],
    );
  }
}

class _GroupWidget extends StatelessWidget {
  const _GroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(
            width: 130,
            height: 130,
            child: Image(
              image: NetworkImage(
                "https://img.people-group.com/images/Leadership/anupam-mittal.jpg",
              ),
            ),
          ),
          Text('javascript \n communtiy')
        ],
      ),
    );
  }
}
