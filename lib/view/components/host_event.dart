import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/event_box_decoration.dart';

import '../../const/size.dart';
import '../../domain/event.dart';
import '../../domain/group.dart';
import '../../domain/host.dart';
import '../../domain/mate.dart';

class HostEvent extends StatelessWidget {
  HostEvent({Key? key, required this.event}) : super(key: key);
  Event event;

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
                  ntime: '2023-03-01 23:00:00',
                  code: 'DINK',
                  rule: 0),
              hosts: [
                Host(id: 1, userId: 1, groupId: 0),
                Host(id: 1, userId: 1, groupId: 0)
              ],
              mates: [
                Mate(id: 0, userId: 2, groupId: 0)
              ]),
          Mate(id: 1, userId: 1, groupId: 0)
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
              event.name,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: SIZE.width * 0.07),
            ),
            Container(
              height: SIZE.height * 0.015,
            ),
            Text(event.ntime.substring(0,10).replaceAll("-", "."),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: SIZE.width * 0.05)),
            Text(event.ntime.substring(11,16),
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
