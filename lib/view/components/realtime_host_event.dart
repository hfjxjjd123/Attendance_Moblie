import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/components/event_box_decoration.dart';
import 'package:gdsc_uos_atttendance/view/components/realtime_event_box_decoration.dart';

import '../../const/size.dart';
import '../../domain/event.dart';

class RealtimeHostEvent extends StatelessWidget {
  RealtimeHostEvent({Key? key, required this.event})
      : super(key: key);
  Event event;

  @override
  Widget build(BuildContext context) {
    String code;
    if(event.code!=null){
      code = event.code!;
    }else{
      code = "";
    }


    return Container(
      width: SIZE.width * 0.8,
      height: SIZE.width * 0.8,
      decoration: realtimeEventBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            event.name,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Container(
            height: SIZE.height*0.05,
          ),
          Text(code,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: brightColor)),
        ],
      ),
    );
  }
}
