import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/presentation/chats/widgets/chatpersontile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kheight10,
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 14, bottom: 25, left: 5, right: 5),
                child: SizedBox(
                  height: 35,
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(width: 2),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          suffixIcon: Icon(CupertinoIcons.search)),
                    ),
                  ),
                ),
              ),
              Column(
                children: List.generate(3, (index) => ChatPersonTile()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
