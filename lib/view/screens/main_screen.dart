import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/host_event.dart';
import 'package:gdsc_uos_atttendance/view/components/participate_event.dart';
import 'package:gdsc_uos_atttendance/view/panels/hosting_event_panel.dart';
import 'package:gdsc_uos_atttendance/view/panels/realtime_event_panel.dart';

import '../components/appbar_icon_button.dart';
import '../components/realtime_participate_event.dart';
import '../panels/participating_event_panel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitesColor,
        //!! size 상수이용하기
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: AppbarIconButton(
            icon: const Icon(
              Icons.manage_accounts,
              size: 40,
            ),
          ),
        ),
        //!! size 상수이용하기
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: AppbarIconButton(
              icon: const Icon(
                Icons.notifications,
                size: 40,
              ),
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
              RealtimeEventPanel(
                realtimeEvents: [
                  RealtimeParticipateEvent(event: "모바일 스크럼")
                ],
              ),
              Container(
                height: 30,
              ),
              HostingEventPanel(
                hostEvents: [
                  HostEvent(
                      event: "9시 중도 스터디", date: "2023.02.20", time: "08:55")
                ],
              ),
              Container(
                height: 30,
              ),
              ParticipatingEventPanel(
                participateEvent: [
                  ParticipateEvent(
                      event: "블로그 리뷰", date: "2023.02.21", time: "16:00"),
                  ParticipateEvent(
                      event: "스프린트 리뷰", date: "2023.02.26", time: "12:00"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
