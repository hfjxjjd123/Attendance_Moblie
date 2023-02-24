import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/event_box_decoration.dart';

import '../../const/size.dart';

class HostEvent extends StatelessWidget {
  HostEvent(
      {Key? key, required this.event, required this.date, required this.time})
      : super(key: key);
  String event;
  String date;
  String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Beamer.of(context).beamToNamed("/group_host");
      },
      child: Container(
        width: SIZE.width * 0.8,
        height: SIZE.height * 0.22,
        decoration: eventBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              event,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: SIZE.width * 0.07),
            ),
            Container(
              height: SIZE.height * 0.015,
            ),
            Text(date,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: SIZE.width * 0.05)),
            Text("$time ~",
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
