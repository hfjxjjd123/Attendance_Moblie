import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/zconst/raw_strings.dart';

import 'panel_text.dart';

class HostingEventPanel extends StatelessWidget {
  HostingEventPanel({Key? key, required this.hostEvents}) : super(key: key);
  List<Widget> hostEvents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PanelText(title: hosting[ENG],),
        ...hostEvents
      ],
    );
  }
}
