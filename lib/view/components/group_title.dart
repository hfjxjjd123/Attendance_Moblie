import 'package:flutter/material.dart';

class GroupTitle extends StatelessWidget {
  GroupTitle({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
