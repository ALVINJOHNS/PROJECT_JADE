import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/presentation/projectDetailedExplore/widgets/currentMembersWidget.dart';
import 'package:uninet/presentation/projectDetailedExplore/widgets/vacanciesDropdownWidget.dart';

class ProjectDetailedUserScreen extends StatelessWidget {
  const ProjectDetailedUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.lessthan),
                    TextButton(
                      child: Text(
                        'back to projects',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("V-CEC",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        )),
                    Text(" "),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 4,
                    ),
                    Text(" "),
                    Text(
                      'active',
                      style: TextStyle(
                          color: Color.fromRGBO(122, 255, 135, 0.808),
                          fontSize: 30),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width * .65,
                  child: Text(
                      'Building the official app for our College.Need the best of the best '),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Current Members",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 94, 165, 158),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: CurrentMembersWidget(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 30.0, top: 20, bottom: 20),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Text("Vacancies",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 94, 165, 158),
                    )),
                VacanciesDropdownWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
