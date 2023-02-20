import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/event_box_decoration.dart';

class ParticipateEvent extends StatelessWidget {
  ParticipateEvent(
      {Key? key, required this.event, required this.date, required this.time})
      : super(key: key);
  String event;
  String date;
  String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          Beamer.of(context).beamToNamed("/group_participants");
        },
        child: Container(
          width: 360,
          height: 200,
          decoration: eventBoxDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                event,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 30),
              ),
              Container(
                height: 15,
              ),
              Text(date, style: Theme.of(context).textTheme.displayMedium),
              Text("$time ~",
                  style: Theme.of(context).textTheme.displayMedium),
            ],
          ),
        ),
      ),
    );
  }
}
