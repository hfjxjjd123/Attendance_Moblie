import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';

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
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          //Navigate
        },
        child: Container(
          width: 300,
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: baseColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                event,
                style: Theme.of(context).textTheme.displayMedium,
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
