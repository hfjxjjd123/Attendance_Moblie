import 'package:flutter/material.dart';

import '../../../const/size.dart';

class DropoutMessage extends StatelessWidget {
  DropoutMessage({Key? key, required this.groupName}) : super(key: key);
  String groupName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SIZE.width*0.05),
      child: Text(
        "$groupName에서 방출됐습니다.",
        style: TextStyle(
          fontSize: SIZE.width*0.05
        ),
      ),
    );
  }
}
