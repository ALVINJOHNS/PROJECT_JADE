import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/presentation/commonwidgets/chatscreen/chatscreen.dart';

class ChatPersonTile extends StatelessWidget {
  const ChatPersonTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: kwhite,
        radius: 26,
      ),
      title: Text('Alvin Johns'),
      subtitle: Text(
        'Hey there I am using whatsapp',
        maxLines: 1,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '6:56',
            style: TextStyle(fontSize: 12, color: kblack),
          ),
          CircleAvatar(
            backgroundColor: primarycolor,
            radius: 13,
            child: Text(
              '2',
              style: TextStyle(fontSize: 15, color: kblack),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ChatScreen(),
        ));
      },
    );
  }
}
