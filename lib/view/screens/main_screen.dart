import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/host_event.dart';
import 'package:gdsc_uos_atttendance/view/components/participate_event.dart';
import 'package:gdsc_uos_atttendance/view/panels/hosting_event_panel.dart';
import 'package:gdsc_uos_atttendance/view/panels/realtime_event_panel.dart';

import '../../const/size.dart';
import '../../domain/event.dart';
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
              icon: Icon(//!! 변경상태 받아서 빨강 똥글배기 띄우기
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
                    child: RealtimeParticipateEvent(event: Event(
                        id: 0,
                        groupId: 0,
                        scheduleName: '데일리 스크럼',
                        date: '2022.02.27',
                        time: '09:00')),
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
                        event: Event(
                            id: 0,
                            groupId: 0,
                            scheduleName: '데일리 스크럼',
                            date: '2022.02.27',
                            time: '09:00')),
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
                        event: Event(
                            id: 0,
                            groupId: 0,
                            scheduleName: '데일리 스크럼',
                            date: '2022.02.27',
                            time: '09:00')),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SIZE.height*0.01),
                    child: ParticipateEvent(
                        event: Event(
                            id: 0,
                            groupId: 0,
                            scheduleName: '데일리 스크럼',
                            date: '2022.02.27',
                            time: '09:00')),
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
