import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/zconst/size.dart';
import 'package:gdsc_uos_atttendance/xcomponent/setting_collect_panel.dart';
import '../../zconst/colors.dart';
import '../xcomponent/adv_panel.dart';
import '../xcomponent/group_collect_panel.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  //TODO static => dynamic DESIGN

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SIZE.width * 0.075),
            child: ListView(
              children: [
                Container(
                  height: SIZE.height * 0.03,
                ),
                //TODO 이름 string 주입
                Text(
                  "이학림",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme!.titleLarge,
                ),
                Container(
                  height: SIZE.height * 0.008,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.copy),
                    Container(
                      width: 10,
                    ),
                    Text(
                      "gcxka2824",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      width: 10,
                    ),
                  ],
                ),
                columnSmallPadding(),
                GroupCollectPanel(),
                columnSmallPadding(),
                AdvPanel(),
                columnSmallPadding(),
                SettingCollectPanel()
              ],
            )),
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
              "내정보",
              style: TextStyle(
                  color: baseColor,
                  fontSize: SIZE.width * 0.055,
                  fontFamily: "DefaultFont"),
            ),
            Expanded(child: Container()),
          ],
        ),
        backgroundColor: whitesColor,
        elevation: 0,
        toolbarHeight: SIZE.height * 0.06,
      ),
      backgroundColor: whitesColor,
    );
  }
}
