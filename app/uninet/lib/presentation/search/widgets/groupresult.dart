import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/core/colors/colors.dart';

class GroupResult extends StatelessWidget {
  const GroupResult({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(100, (index) => _GroupresultWidget()),
      ),
    );
  }
}

class _GroupresultWidget extends StatelessWidget {
  const _GroupresultWidget();

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
            'JavaScript Community',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            'Come and learn with us',
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
