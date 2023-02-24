import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/host_event.dart';
import 'package:gdsc_uos_atttendance/view/components/participate_event.dart';
import 'package:gdsc_uos_atttendance/view/panels/hosting_event_panel.dart';
import 'package:gdsc_uos_atttendance/view/panels/realtime_event_panel.dart';

import '../../const/size.dart';
import '../components/appbar_icon_button.dart';
import '../components/realtime_participate_event.dart';
import '../panels/participating_event_panel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: SIZE.height*0.07,
        backgroundColor: whitesColor,
        //!! size 상수이용하기
        leading: Padding(
          padding: EdgeInsets.only(left: SIZE.width*0.02),
          child: AppbarIconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.manage_accounts,
              size: SIZE.width*0.09,
            ),
          ),
        ),
        //!! size 상수이용하기
        actions: [
          Padding(
            padding: EdgeInsets.only(right: SIZE.width*0.02),
            child: AppbarIconButton(
              onPressed: (){
                Beamer.of(context).beamToNamed("/notification");
              },
              icon: Icon(
                Icons.notifications,
                size: SIZE.width*0.09,
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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SIZE.height*0.01),
                    child: RealtimeParticipateEvent(event: "모바일 스크럼"),
                  )
                ],
              ),
              Container(
                height: SIZE.height*0.02,
              ),
              HostingEventPanel(
                hostEvents: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SIZE.height*0.01),
                    child: HostEvent(
                        event: "9시 중도 스터디", date: "2023.02.20", time: "08:55"),
                  )
                ],
              ),
              Container(
                height: SIZE.height*0.02,
              ),
              ParticipatingEventPanel(
                participateEvent: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SIZE.height*0.01),
                    child: ParticipateEvent(
                        event: "블로그 리뷰", date: "2023.02.21", time: "16:00"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SIZE.height*0.01),
                    child: ParticipateEvent(
                        event: "스프린트 리뷰", date: "2023.02.26", time: "12:00"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
