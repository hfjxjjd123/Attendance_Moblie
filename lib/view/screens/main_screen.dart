import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/const/size.dart';
import 'package:gdsc_uos_atttendance/view/components/host_event.dart';
import 'package:gdsc_uos_atttendance/view/components/participate_event.dart';
import 'package:gdsc_uos_atttendance/view/panels/hosting_event_panel.dart';

import '../components/appbar_icon_button.dart';
import '../panels/participating_event_panel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitesColor,
        //!! size 상수이용하기
        leading: AppbarIconButton(
          icon: const Icon(
            Icons.settings,
            size: 30,
          ),
        ),
        //!! size 상수이용하기
        actions: [
          AppbarIconButton(
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
          )
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: whitesColor,
          child: ListView(
            children: [
              HostingEventPanel(
                hostEvents: [
                  HostEvent(event: "모바일 스크럼", date: "2023.02.20", time: "09:00"),
                  HostEvent(event: "9시 중도 스터디", date: "2023.02.20", time: "08:55")
                ],
              ),
              Container(height: 25,),
              ParticipatingEventPanel(
                participateEvent: [
                  ParticipateEvent(event: "블로그 리뷰", date: "2023.02.21", time: "16:00"),
                  ParticipateEvent(event: "스프린트 리뷰", date: "2023.02.26", time: "12:00"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
