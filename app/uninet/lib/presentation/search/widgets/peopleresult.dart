import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/core/colors/colors.dart';

class PeopleResult extends StatelessWidget {
  const PeopleResult({super.key, required this.query});
  final String query;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(100, (index) => _PeopleresultWidget()),
      ),
    );
  }
}

class _PeopleresultWidget extends StatelessWidget {
  const _PeopleresultWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 27,
            backgroundColor: kblack,
          ),
          title: Text(
            'Alvin Johns',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            'Hardware Main',
            maxLines: 1,
          ),
          trailing: Icon(CupertinoIcons.right_chevron),
        ),
        Divider(
          thickness: 1.5,
        )
      ],
    );
  }
}
