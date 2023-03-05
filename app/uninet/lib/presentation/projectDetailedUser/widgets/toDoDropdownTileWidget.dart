import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

ValueNotifier<bool> selected = ValueNotifier(false);

class ToDoDropdownTileWidget extends StatelessWidget {
  ToDoDropdownTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('App'),
      trailing: Icon(CupertinoIcons.arrow_down_right),
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Complete timetable features'),
              ValueListenableBuilder(
                  valueListenable: selected,
                  builder: (BuildContext, bool bval, Widget? _) {
                    return Checkbox(
                        value: selected.value,
                        onChanged: (bval) {
                          if (bval == null) {
                            return;
                          }
                          selected.value = bval;
                          selected.notifyListeners();
                        });
                  })
            ],
          ),
        );
      }),
      textColor: Colors.black,
      iconColor: Colors.black,
    );
  }
}
