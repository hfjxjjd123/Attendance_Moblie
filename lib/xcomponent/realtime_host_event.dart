import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/zconst/colors.dart';
import 'package:gdsc_uos_atttendance/xcomponent/event_box_decoration.dart';
import 'package:gdsc_uos_atttendance/xcomponent/realtime_event_box_decoration.dart';

import '../../zconst/size.dart';
import '../../zdomain/event.dart';

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
      height: SIZE.width * 0.65,
      decoration: realtimeEventBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            event.name,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Container(
            height: SIZE.height*0.04,
          ),
          Text(code,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: brightColor, fontSize: 30)),
        ],
      ),
    );
  }
}
