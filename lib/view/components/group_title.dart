import 'package:flutter/material.dart';

import '../../const/size.dart';

class GroupTitle extends StatelessWidget {
  GroupTitle({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(fontSize: SIZE.width * 0.09),
    );
  }
}
