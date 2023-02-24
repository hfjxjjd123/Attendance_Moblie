import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';

import '../../const/size.dart';

class NotificationBox extends StatelessWidget {
  NotificationBox({Key? key, required this.contents}) : super(key: key);
  Widget contents;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SIZE.width*0.8,
      decoration: BoxDecoration(
        color: messageBoxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: contents,
    );
  }
}
