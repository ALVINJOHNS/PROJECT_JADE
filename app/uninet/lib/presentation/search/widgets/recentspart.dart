import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/constants/constants.dart';

class RecentPart extends StatelessWidget {
  const RecentPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recents',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          kheight20,
          Column(
            children: List.generate(10, (index) => _RecentSearch()),
          )
        ],
      ),
    );
  }
}

class _RecentSearch extends StatelessWidget {
  const _RecentSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Alvin Johns',
              style: TextStyle(fontSize: 17),
            ),
            Spacer(),
            Icon(CupertinoIcons.arrow_up_right),
          ],
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
