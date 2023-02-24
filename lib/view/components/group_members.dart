import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/const/debug.dart';
import 'package:gdsc_uos_atttendance/const/raw_strings.dart';

import '../../const/size.dart';

class GroupMembers extends StatelessWidget {
  GroupMembers({Key? key, required this.numOfMember}) : super(key: key);
  int numOfMember;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        logger.d("TAPPED");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.group,
            color: activeColor,
            size: SIZE.width*0.05,
          ),
          Container(
            width: SIZE.width*0.02,
          ),
          Text(
            "$numOfMember${peopleUnit[KOR]}",
            style: TextStyle(
                color: activeColor,
                fontSize: SIZE.width*0.05,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
