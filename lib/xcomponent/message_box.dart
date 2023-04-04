import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/zconst/colors.dart';
import 'package:gdsc_uos_atttendance/zconst/message_option.dart';
import 'package:gdsc_uos_atttendance/xcomponent/vertical_padding.dart';

import '../../zconst/debug.dart';
import '../../zconst/size.dart';

class MessageBox extends StatelessWidget {
  //!! Group의 엔티티를 전달해줘야 이후 연결까지 자연스럽게 가능
  //!! 오늘어제 Controller를 이용하자
  MessageBox(
      {Key? key,
      required this.groupName,
      required this.hostName,
      required this.mateName,
      this.notify,
      required this.option,
      required this.time})
      : super(key: key);
  String groupName;
  String hostName;
  String mateName;
  String? notify; //아니어도 된다.
  int option;

  //!! DateTime 타입으로 바꿔줘야한다.
  String time;

  late String message;

  @override
  Widget build(BuildContext context) {
    initMessage(groupName, hostName, mateName, notify, option);

    if ((option != NOTIFY) & (option != INVITATE)) {
      return Padding(
        padding: EdgeInsets.only(top: SIZE.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: SIZE.width * 0.8,
              decoration: BoxDecoration(
                color: messageBoxColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(SIZE.width * 0.05),
                child: Text(
                  message,
                  style: TextStyle(fontSize: SIZE.width * 0.05, height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: SIZE.width * 0.04,
              ),
            )
          ],
        ),
      );
    } else if (option == NOTIFY) {
      return Padding(
        padding: EdgeInsets.only(top: SIZE.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: SIZE.width * 0.8,
              decoration: BoxDecoration(
                color: messageBoxColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(SIZE.width * 0.05),
                child: Column(
                  children: [
                    Text(
                      "공지: $groupName",
                      style:
                          TextStyle(fontSize: SIZE.width * 0.05, height: 1.5),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    VerticalPadding(height: SIZE.height * 0.01),
                    Text(
                      message,
                      style:
                          TextStyle(fontSize: SIZE.width * 0.05, height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: SIZE.width * 0.04,
              ),
            )
          ],
        ),
      );
    } else {
      //수락 클릭시 splash color 수정
      //Team이름을 클릭하면 Team화면으로 갈 수 있도록 설정하기
      return Padding(
        padding: EdgeInsets.only(top: SIZE.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: SIZE.width * 0.8,
              decoration: BoxDecoration(
                color: messageBoxColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(SIZE.width * 0.05),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Beamer.of(context).beamToNamed("/group_participants");
                      },
                      child: Text(
                        groupName,
                        style:
                            TextStyle(fontSize: SIZE.width * 0.05, height: 1.5),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    VerticalPadding(height: SIZE.height * 0.01),
                    Text(
                      message,
                      style:
                          TextStyle(fontSize: SIZE.width * 0.045, height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                    VerticalPadding(height: SIZE.height * 0.025),
                    Row(
                      children: [
                        Container(
                          width: SIZE.width * 0.03,
                        ),
                        InkWell(
                          highlightColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(SIZE.width*0.02),
                            child: Text(
                              "거절",
                              style: TextStyle(fontSize: SIZE.width * 0.04, color: redColor),
                            ),
                          ),
                          onTap: () {
                          },
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          highlightColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(SIZE.width*0.02),
                            child: Text("수락",
                                style: TextStyle(fontSize: SIZE.width * 0.04, color: Colors.black)),
                          ),
                          onTap: () {
                          },
                        ),
                        Container(
                          width: SIZE.width * 0.03,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: SIZE.width * 0.04,
              ),
            )
          ],
        ),
      );
    }
  }

  void initMessage(String groupName, String hostName, String mateName,
      String? notify, int option) {
    switch (option) {
      case INVITATE:
        {
          message = "회원님을 그룹에 초대합니다.";
        }
        break;
      case INVITATE_RESPONSE:
        {
          message = "$groupName에 \n회원님이 들어갔습니다.";
        }
        break;
      case INVITATE_RECUR:
        {
          message = "$groupName에 \n$mateName님이 들어왔습니다.";
        }
        break;
      case NOTIFY:
        {
          message = notify!;
        }
        break;
      case DROPOUT_RECUR:
        {
          message = "$groupName에서\n$mateName님이 방출됐습니다.";
        }
        break;
      case DROPOUT_RESPONSE:
        {
          message = "$groupName에서\n방출되었습니다.";
        }
        break;
      case LEAVE_RESPONSE:
        {
          message = "$groupName에서\n$mateName님이 나갔습니다.";
        }
        break;
      case LEAVE_RECUR:
        {
          message = "$groupName에서 나갔습니다.";
        }
        break;
      case DELEGATE_RESPONSE:
        {
          message = "$groupName에서 관리자로 등록됐습니다.";
        }
        break;
      case DELEGATE_RECUR:
        {
          message = "$groupName에서 $mateName님이 관리자로 등록됐습니다.";
        }
        break;
      case UNDELEGAGTE_RESPONSE:
        {
          message = "$groupName에서 $hostName님이 일반 멤버로 등록됐습니다.";
        }
        break;
      case UNDELEGAGTE_RECUR:
        {
          message = "$groupName에서 일반 멤버로 등록됐습니다.";
        }
        break;
    }
  }
}
