import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/presentation/projectDetailedUser/projectDetailedUser.dart';

class MyProjectButtonWidget extends StatelessWidget {
  const MyProjectButtonWidget(
      {super.key, required int index, required String this.title1});
  final String title1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(kblack.withOpacity(0.7)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                // side: BorderSide(color: Colors.red)
              ))),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const ProjectDetailedUserScreen()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                height: 45,
                // child: CircleAvatar(
                //   backgroundColor: Color.fromRGBO(0, 0, 0, 23),
                //   radius: 9,
                // ),
              ),
              Text('V-CEC',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
              Icon(CupertinoIcons.greaterthan)
            ],
          )),
    );
  }
}
