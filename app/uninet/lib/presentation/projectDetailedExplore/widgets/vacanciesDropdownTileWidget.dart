import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VacanciesDropdownTileWidget extends StatelessWidget {
  const VacanciesDropdownTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Flutter Developer'),
      trailing: Icon(CupertinoIcons.arrow_down_right),
      children: <Widget>[
        ListTile(
          title: Text('Need flutter developer who is willing to work hard'),
          subtitle: Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white),
                ),
                onPressed: () {},
                child: Text(
                  'apply',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          tileColor: Color.fromARGB(102, 94, 165, 158),
        ),
      ],
      textColor: Colors.black,
      iconColor: Colors.black,
    );
  }
}
