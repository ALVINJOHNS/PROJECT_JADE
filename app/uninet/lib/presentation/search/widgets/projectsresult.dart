import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/constants/constants.dart';

class ProjectsResult extends StatelessWidget {
  const ProjectsResult({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(100, (index) => ProjectresultWidget()),
      ),
    );
  }
}

class ProjectresultWidget extends StatelessWidget {
  const ProjectresultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'V CEC',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            'The latus rectum of a conic section is the chord through a focus parallel to the conic section directrix (Coxeter 1969). "Latus rectum" is a compound of the Latin latus, meaning "side," and rectum, meaning "straight." Half the latus rectum is called the semilatus rectum.',
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
