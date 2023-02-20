import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/raw_strings.dart';

import '../components/panel_text.dart';

class RealtimeEventPanel extends StatelessWidget {
  RealtimeEventPanel({Key? key, required this.realtimeEvents}) : super(key: key);
  List<Widget> realtimeEvents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...realtimeEvents
      ],
    );
  }
}
