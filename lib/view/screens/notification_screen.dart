import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/size.dart';

import '../../const/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 40, height: 40,
          color: Colors.blue,
        ),
      ),
      appBar: AppBar(
        leading: SizedBox(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: baseColor,
            ),
            onPressed: () {
              Beamer.of(context).beamBack();
            },
          ),
        ),
        title: Row(
          children: [
            Text("알림", style: TextStyle(color: baseColor, fontSize: SIZE.width*0.06, fontFamily: "DefaultFont"),),
            Expanded(child: Container()),
          ],
        ),
        backgroundColor: whitesColor,
        elevation: 2,
        toolbarHeight: SIZE.height*0.06,
      ),
      backgroundColor: whitesColor,
    );
  }
}
