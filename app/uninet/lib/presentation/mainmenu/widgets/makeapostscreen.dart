import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';

class MakeAPostScreen extends StatelessWidget {
  const MakeAPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight20,
                kheight20,
                Text(
                  'Make A Post',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kheight20,
                kheight20,
                Container(
                  height: 260,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 239, 239),
                      border: Border.all(width: 1)),
                  child: Center(
                    child: TextButton(
                        onPressed: () {}, child: Text('upload image')),
                  ),
                ),
                kheight20,
                TextFormField(
                  maxLines: 5,
                  maxLength: 30,
                  decoration: InputDecoration(
                    hintText: 'Enter Text',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromARGB(255, 39, 39, 39),
        ),
        child: Center(
          child: Text(
            'Submit',
            style: TextStyle(
              color: kwhite,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
