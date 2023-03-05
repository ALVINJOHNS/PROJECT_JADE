import 'package:flutter/material.dart';
import 'package:uninet/presentation/mainmenu/widgets/postwidget.dart';

class PostsTab extends StatelessWidget {
  const PostsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) => PostWidget()),
      ),
    );
  }
}
