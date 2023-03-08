import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/view/components/event_box_decoration.dart';

import '../../const/size.dart';
import '../../domain/event.dart';

class PartisEvent extends StatelessWidget {
  PartisEvent(
      {Key? key, required this.event})
      : super(key: key);
  Event? event;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Beamer.of(context).beamToNamed("/group_participants");
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
