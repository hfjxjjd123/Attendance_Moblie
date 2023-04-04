import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/zconst/colors.dart';
import 'package:gdsc_uos_atttendance/xcomponent/event_box_decoration.dart';
import 'package:gdsc_uos_atttendance/xcomponent/realtime_event_box_decoration.dart';

import '../../zconst/size.dart';
import '../../zdomain/event.dart';

class RealtimePartisEvent extends StatelessWidget {
  RealtimePartisEvent({Key? key, required this.event}) : super(key: key);
  Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SIZE.width * 0.8,
      height: SIZE.width * 0.65,
      decoration: realtimeEventBoxDecoration,
      child: Column(
        children: [
          Expanded(flex:2, child: Container()),
          Text(
            event.name,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Container(
            height: SIZE.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SIZE.width * 0.22),
            child: TextFormField(
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.white),
              cursorColor: Colors.white,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
          ),
          Container(
            height: SIZE.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SIZE.width * 0.10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      color: Color(0xffff324a),
                      size: SIZE.width*0.075,
                    )),

                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.check,
                      color: brightColor,
                      size: SIZE.width*0.075,
                    ))
              ],
            ),
          ),
          Expanded(flex:1, child: Container())
        ],
      ),
    );
  }
}
