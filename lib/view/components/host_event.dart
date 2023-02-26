import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/event_box_decoration.dart';

import '../../const/size.dart';
import '../../domain/event.dart';

class HostEvent extends StatelessWidget {
  HostEvent(
      {Key? key, required this.event})
      : super(key: key);
  Event event;

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
              event.scheduleName,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: SIZE.width * 0.07),
            ),
            Container(
              height: SIZE.height * 0.015,
            ),
            Text(event.date,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: SIZE.width * 0.05)),
            Text(event.time,
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
