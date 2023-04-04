import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/zconst/size.dart';

import '../../zconst/colors.dart';


class GroupGenerateScreen extends StatelessWidget {
  GroupGenerateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SIZE.width * 0.1),
            child: Container()
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
            Text(
              "설정",
              style: TextStyle(
                  color: baseColor,
                  fontSize: SIZE.width * 0.06,
                  fontFamily: "DefaultFont"),
            ),
            Expanded(child: Container()),
          ],
        ),
        backgroundColor: whitesColor,
        elevation: 2,
        toolbarHeight: SIZE.height * 0.06,
      ),
      backgroundColor: whitesColor,
    );
  }
}
