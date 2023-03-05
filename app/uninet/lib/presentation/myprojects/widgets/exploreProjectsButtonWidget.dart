import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/presentation/projectDetailedExplore/projectDetailedExplore.dart';

class ExploreProjectsButtonWidget extends StatelessWidget {
  const ExploreProjectsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 30, top: 10, bottom: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black)))),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => const ProjectDetailedExploreScreen()),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ignite',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.64,
                  child: Text(
                    'A project for the people by the people',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.greaterthan,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
