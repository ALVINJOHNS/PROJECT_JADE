import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight20,
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.xmark_circle_fill,
                        size: 40,
                        color: primarycolor.withOpacity(0.5),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                kheight10,
                Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kheight20,
                kheight20,
                kheight20,
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: kblack),
                    )),
                Divider(
                  thickness: 1.5,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Delete Account',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: kblack),
                    )),
                Divider(
                  thickness: 1.5,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    )),
                Divider(
                  thickness: 1.5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
