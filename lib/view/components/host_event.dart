import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/event_box_decoration.dart';

import '../../const/size.dart';
import '../../domain/event.dart';
import '../../domain/group.dart';

class HostEvent extends StatelessWidget {
  HostEvent({Key? key, required this.event}) : super(key: key);
  Event? event;

  //Event가 null일때 핸들링처리 해줘야함

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Beamer.of(context).beamToNamed("/group_host", data: [
          Group(
              id: 0,
              name: 'GDSC UOS 모바일팀',
              notification: '',
              nextEvent: Event(
                  id: 0,
                  groupId: 0,
                  name: '데일리 스크럼',
                  nextSchedule: '2023-03-01 23:00:00',
                  code: 'DINK',
                  rule: 0),
            relatedUsersId: [
              123, 235, 346
            ]
          ),
        ]);
      },
      child: Container(
        width: SIZE.width * 0.8,
        height: SIZE.height * 0.22,
        decoration: eventBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              event!.name,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: SIZE.width * 0.07),
            ),
            Container(
              height: SIZE.height * 0.015,
            ),
            Text(event!.nextSchedule.substring(0,10).replaceAll("-", "."),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: SIZE.width * 0.05)),
            Text(event!.nextSchedule.substring(11,16),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: SIZE.width * 0.05)),
          ],
        ),
      ),
    );
  }
}
