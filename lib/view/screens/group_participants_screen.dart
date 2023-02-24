import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/const/padding.dart';
import 'package:gdsc_uos_atttendance/const/size.dart';
import 'package:gdsc_uos_atttendance/view/components/attendance_checkbox.dart';
import 'package:gdsc_uos_atttendance/view/components/group_members.dart';
import 'package:gdsc_uos_atttendance/view/components/group_title.dart';
import 'package:gdsc_uos_atttendance/view/components/host_event.dart';
import 'package:gdsc_uos_atttendance/view/components/vertical_padding.dart';

import '../components/participate_event.dart';

class GroupParticipantsScreen extends StatelessWidget {
  const GroupParticipantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: whitesColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SIZE.width * 0.08),
            child: Column(
              children: [
                GroupTitle(title: "GDSC UOS 모바일팀"),
                VerticalPadding(height: TINY_SPACE),
                GroupMembers(
                  numOfMember: 13,
                ),
                VerticalPadding(height: BIG_SPACE),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: SIZE.width * 0.055),
                    ),
                    ParticipateEvent(
                        event: "모바일 스크럼", date: "2023.02.17", time: "09:00"),
                  ],
                ),
                //다음 일정이 없을 때를 대비해서 없음 컴포넌트도 생성해야함.
                VerticalPadding(height: BIG_SPACE),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SIZE.width * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "나의 최근 참여도",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: SIZE.width * 0.04),
                      ),
                      VerticalPadding(height: TINY_SPACE),
                      Row(
                        children: [
                          AttendanceCheckbox(attendance: 2),
                          AttendanceCheckbox(attendance: 2),
                          AttendanceCheckbox(attendance: 0),
                          AttendanceCheckbox(attendance: 1),
                          AttendanceCheckbox(attendance: 0),
                          AttendanceCheckbox(attendance: 2),
                          AttendanceCheckbox(attendance: 2),
                        ],
                      )
                    ],
                  ),
                ),
                VerticalPadding(height: BIG_SPACE),
                Container(
                  color: brightColor,
                  width: 360,
                  height: 150,
                  child: Center(
                      child: Text(
                    "(그룹일정페이지로 이동)",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 30),
                  )),
                ),
                Expanded(child: Container()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.campaign,
                      size: SIZE.width*0.08,
                      color: baseColor,
                    ),
                    Container(
                      width: TINY_SPACE,
                    ),
                    SizedBox(
                        width: SIZE.width * 0.7,
                        child: TextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: SIZE.width * 0.04),
                          cursorColor: baseColor,
                          readOnly: true,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: baseColor)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: baseColor))),
                        )),
                  ],
                ),
                VerticalPadding(
                  height: SIZE.height * 0.06,
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: baseColor,
          ),
          onPressed: () {
            Beamer.of(context).beamBack();
          },
        ),
        backgroundColor: whitesColor,
        elevation: 0,
        toolbarHeight: SIZE.height * 0.06,
      ),
    );
  }
}
