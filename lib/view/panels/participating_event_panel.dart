import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/raw_strings.dart';

import '../components/panel_text.dart';

class ParticipatingEventPanel extends StatelessWidget {
  ParticipatingEventPanel({Key? key, required this.participateEvent}) : super(key: key);
  List<Widget> participateEvent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PanelText(title: participating[KOR]),
        ...participateEvent
      ],
    );
  }
}
