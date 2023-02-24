import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';

import '../../const/size.dart';

const int ATTEND = 2;
const int EXCUSED_ABSENT = 1;
const int ABSENT = 0;

class AttendanceCheckbox extends StatelessWidget {
  AttendanceCheckbox({Key? key, required this.attendance}) : super(key: key);
  int attendance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SIZE.width*0.08,
      height: SIZE.width*0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: (attendance > ABSENT) ? highlightColor : baseColor,
      ),
      child: (attendance > ABSENT)
          ? Icon(
              Icons.check,
              color: whitesColor,
            )
          : Icon(
              Icons.close,
              color: whitesColor,
            ),
    );
  }
}
