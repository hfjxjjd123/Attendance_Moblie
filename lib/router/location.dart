import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/domain/event.dart';
import 'package:gdsc_uos_atttendance/domain/host.dart';
import 'package:gdsc_uos_atttendance/domain/mate.dart';
import 'package:gdsc_uos_atttendance/view/screens/group_participants_screen.dart';
import 'package:gdsc_uos_atttendance/view/screens/notification_screen.dart';
import '../const/size.dart';
import '../domain/group.dart';
import '../view/screens/group_host_screen.dart';
import '../view/screens/main_screen.dart';

class MainLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;
    return [
      BeamPage(child: MainScreen(), key: const ValueKey('main')),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/main"];
}

//!! 로케이션 분리하지 않고 안에서 처리하는 방법?
class GroupHostLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;
    //이 안에서 SIZE를 정의하려면 화면의회전을 막아야한다.

    return [
      BeamPage(
          child: GroupHostScreen(
            group: Group(
                id: 0,
                name: 'GDSC UOS 모바일팀',
                notification: '',
                nextEvent: Event(
                    id: 0,
                    groupId: 0,
                    scheduleName: '데일리 스크럼',
                    date: '2022.02.27',
                    time: '09:00'),
                hosts: [
                  Host(id: 1, userId: 1, groupId: 0),
                  Host(id: 1, userId: 1, groupId: 0)
                ],
                mates: [
                  Mate(id: 0, userId: 2, groupId: 0)
                ]),
            host: Host(id: 1, userId: 1, groupId: 0),
          ),
          key: const ValueKey('group_host')),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/group_host"];
}

class GroupParticipantsLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;
    //이 안에서 SIZE를 정의하려면 화면의회전을 막아야한다.

    return [
      BeamPage(
          child: GroupParticipantsScreen(
            group: Group(
                id: 0,
                name: 'GDSC UOS 모바일팀',
                notification: '',
                nextEvent: Event(
                    id: 0,
                    groupId: 0,
                    scheduleName: '데일리 스크럼',
                    date: '2022.02.27',
                    time: '09:00'),
                hosts: [
                  Host(id: 1, userId: 1, groupId: 0),
                  Host(id: 1, userId: 1, groupId: 0)
                ],
                mates: [
                  Mate(id: 0, userId: 2, groupId: 0)
                ]),
            mate: Mate(id: 1, userId: 1, groupId: 0),
          ),
          key: const ValueKey('group_participants')),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/group_participants"];
}

class NotificationLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;
    //이 안에서 SIZE를 정의하려면 화면의회전을 막아야한다.

    return [
      BeamPage(
          child: NotificationScreen(), key: const ValueKey('notification')),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/notification"];
}
