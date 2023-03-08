import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/domain/event.dart';
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
                    name: '데일리 스크럼',
                    nextSchedule: '2023-03-01 23:00:00',
                    code: 'DINK',
                    rule: 0),
              relatedUsersId: [
                123, 235, 346
              ]
                ),
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

    //!!아닌데.. beamToNamed를 부른 그 때, group 정보도 존재하고 Mate정보는 만들어서 처리하면 되느데?
    Group group = Group(
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
        );

    return [
      BeamPage(
          child: GroupParticipantsScreen(
            group: group
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
