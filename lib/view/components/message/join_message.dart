import 'package:flutter/material.dart';

import '../../../const/size.dart';

class JoinMessage extends StatelessWidget {
  JoinMessage({Key? key, required this.groupName, required this.userName})
      : super(key: key);
  String groupName;
  String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SIZE.width * 0.05),
      child: Text(
        "$userName님이 $groupName에 합류했습니다.",
        style: TextStyle(fontSize: SIZE.width * 0.05),
      ),
    );
  }
}
