import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uninet/presentation/projectDetailedUser/widgets/toDoDropdownTileWidget.dart';

class ToDoDropdownWidget extends StatelessWidget {
  const ToDoDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 0, 0, 0))),
        child: Column(
          children: List.generate(3, (index) {
            return ToDoDropdownTileWidget();
          }),
        ),
      ),
    );
  }
}
