import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/event_box_decoration.dart';
import 'package:gdsc_uos_atttendance/view/components/realtime_event_box_decoration.dart';

class RealtimeParticipateEvent extends StatelessWidget {
  RealtimeParticipateEvent({Key? key, required this.event})
      : super(key: key);
  String event;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 360,
        height: 360,
        decoration: realtimeEventBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              event,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Container(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: TextFormField(
                style: Theme.of(context).textTheme.displayMedium!.copyWith(color: brightColor),
                cursorColor: brightColor,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: brightColor)
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: brightColor)
                  )
                ),

              ),
            )//!!
          ],
        ),
      ),
    );
  }
}
