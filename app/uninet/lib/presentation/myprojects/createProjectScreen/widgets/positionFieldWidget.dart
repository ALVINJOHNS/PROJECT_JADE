import 'package:flutter/material.dart';

class PositionFieldWidget extends StatelessWidget {
  const PositionFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'More info'),
            )
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
