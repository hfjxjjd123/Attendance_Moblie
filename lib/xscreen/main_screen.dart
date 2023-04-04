import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/zconst/colors.dart';
import 'package:gdsc_uos_atttendance/xcomponent/host_event.dart';
import 'package:gdsc_uos_atttendance/xcomponent/partis_event.dart';
import 'package:gdsc_uos_atttendance/xcomponent/adv_panel.dart';
import 'package:gdsc_uos_atttendance/xcomponent/hosting_event_panel.dart';
import 'package:gdsc_uos_atttendance/xcomponent/realtime_event_panel.dart';

import '../../zconst/size.dart';
import '../../zdomain/event.dart';
import '../xcomponent/appbar_icon_button.dart';
import '../xcomponent/realtime_host_event.dart';
import '../xcomponent/realtime_partis_event.dart';
import '../xcomponent/participating_event_panel.dart';

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
              Beamer.of(context).beamToNamed("/setting");

            },
            icon: Icon(
              Icons.manage_accounts,
              size: SIZE.width*0.09,
              color: graysColor,
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
                color: graysColor,
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
                    child: RealtimeHostEvent(event: Event(
                        id: 0,
                        groupId: 0,
                        name: '데일리 스크럼',
                        nextSchedule: '2023-03-06 23:00:00',
                        code: 'VRSS',
                        rule: 0),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SIZE.height*0.01),
                    child: RealtimePartisEvent(event: Event(
                        id: 0,
                        groupId: 0,
                        name: '중도스터디',
                        nextSchedule: '2023-03-09 10:00:00',
                        code: 'VRSS',
                        rule: 0),),
                  )
                ],
              ),
              AdvPanel(),
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
                            name: '데일리 스크럼',
                            nextSchedule: '2023-03-06 23:00:00',
                            code: 'DINK',
                            rule: 0),),
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
                    child: PartisEvent(
                        event: Event(
                            id: 0,
                            groupId: 0,
                            name: '중도 스터디',
                            nextSchedule: '2023-03-06 10:00:00',
                            code: 'DINK',
                            rule: 0),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SIZE.height*0.01),
                    child: PartisEvent(
                        event: Event(
                            id: 0,
                            groupId: 0,
                            name: '데일리 스크럼',
                            nextSchedule: '2023-03-01 23:00:00',
                            code: 'DINK',
                            rule: 0),),
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
