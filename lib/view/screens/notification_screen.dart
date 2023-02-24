import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gdsc_uos_atttendance/const/size.dart';
import 'package:gdsc_uos_atttendance/view/components/message/dropout_message.dart';
import 'package:gdsc_uos_atttendance/view/components/message/join_message.dart';
import 'package:gdsc_uos_atttendance/view/components/notification_box.dart';

import '../../const/colors.dart';
import '../components/message/leave_message.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);
  final List<Widget> messages = [
    DropoutMessage(groupName: "GDSC 모바일팀"),
    JoinMessage(
      groupName: "GDSC 모바일팀",
      userName: "이학림",
    ),
    LeaveMessage(
      groupName: "GDSC 모바일팀",
      userName: "이학림",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SIZE.width * 0.1),
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              return NotificationBox(
                contents: messages[index],
              );
            },
          ),
        ),
      ),
      appBar: AppBar(
        leading: SizedBox(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: baseColor,
            ),
            onPressed: () {
              Beamer.of(context).beamBack();
            },
          ),
        ),
        title: Row(
          children: [
            Text(
              "알림",
              style: TextStyle(
                  color: baseColor,
                  fontSize: SIZE.width * 0.06,
                  fontFamily: "DefaultFont"),
            ),
            Expanded(child: Container()),
          ],
        ),
        backgroundColor: whitesColor,
        elevation: 2,
        toolbarHeight: SIZE.height * 0.06,
      ),
      backgroundColor: whitesColor,
    );
  }
}
