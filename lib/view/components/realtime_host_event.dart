import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';

class RealtimeHostEvent extends StatelessWidget {
  RealtimeHostEvent({Key? key, required this.event, required this.code})
      : super(key: key);
  String event;
  String code;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: activeColor),
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
            Text(code, style: Theme.of(context).textTheme.displayLarge!.copyWith(color: brightColor)),
          ],
        ),
      ),
    );
  }
}
