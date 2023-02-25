import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gdsc_uos_atttendance/const/size.dart';
import 'package:gdsc_uos_atttendance/view/components/message_box.dart';

import '../../const/colors.dart';
import '../../const/message_option.dart';
import '../../domain/message.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);
  final List<Message> messages = [
    Message(
        groupName: "스터디",
        hostName: "이학림",
        mateName: "강주혁",
        option: DROPOUT_RESPONSE,
      time:"08:14"
    ),
    Message(
        groupName: "GDSC UOS 모바일팀",
        hostName: "이학림",
        mateName: "송은수",
        option: INVITATE_RECUR,
        time:"09:12"
    ),
    Message(
        groupName: "GDSC UOS 모바일팀",
        hostName: "이학림",
        mateName: "권혁주",
        option: INVITATE,
        time:"09:14"
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
              return MessageBox(
                groupName: messages[index].groupName,
                hostName: messages[index].hostName,
                mateName: messages[index].mateName,
                notify: messages[index].notify,
                option: messages[index].option,
                time: messages[index].time
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
