import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/view/screens/group_participants_screen.dart';
import 'package:gdsc_uos_atttendance/view/screens/notification_screen.dart';
import '../const/size.dart';
import '../view/screens/group_host_screen.dart';
import '../view/screens/main_screen.dart';

class MainLocation extends BeamLocation{
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;
    return [
      BeamPage(
          child: MainScreen(),
          key: const ValueKey('main')
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/main"];

}

//!! 로케이션 분리하지 않고 안에서 처리하는 방법?
class GroupHostLocation extends BeamLocation{
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;
    //이 안에서 SIZE를 정의하려면 화면의회전을 막아야한다.

    return [
      BeamPage(
          child: GroupHostScreen(),
          key: const ValueKey('group_host')
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/group_host"];

}
class GroupParticipantsLocation extends BeamLocation{
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;
    //이 안에서 SIZE를 정의하려면 화면의회전을 막아야한다.

    return [
      BeamPage(
          child: GroupParticipantsScreen(),
          key: const ValueKey('group_participants')
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/group_participants"];

}

class NotificationLocation extends BeamLocation{
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;
    //이 안에서 SIZE를 정의하려면 화면의회전을 막아야한다.

    return [
      BeamPage(
          child: NotificationScreen(),
          key: const ValueKey('notification')
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/notification"];

}
