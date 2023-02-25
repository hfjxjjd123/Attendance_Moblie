import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/const/message_option.dart';
import 'package:gdsc_uos_atttendance/view/components/vertical_padding.dart';

import '../../const/debug.dart';
import '../../const/size.dart';

class MessageBox extends StatelessWidget {
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
                    Text(
                      groupName,
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
                    VerticalPadding(height: SIZE.height * 0.03),
                    Row(
                      children: [
                        Container(
                          width: SIZE.width * 0.05,
                        ),
                        InkWell(
                          child: Text(
                            "거절",
                            style: TextStyle(fontSize: SIZE.width * 0.04, color: Color(0xffA81F1F)),
                          ),
                          onTap: () {
                            logger.d("clicked");
                          },
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          child: Text("수락",
                              style: TextStyle(fontSize: SIZE.width * 0.04, color: Color(0xff151868))),
                          onTap: () {
                            logger.d("clicked");
                          },
                        ),
                        Container(
                          width: SIZE.width * 0.05,
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
          message = "$groupName에 \n회원님이 합류됐습니다.";
        }
        break;
      case INVITATE_RECUR:
        {
          message = "$groupName에 \n$mateName님이 합류했습니다.";
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
