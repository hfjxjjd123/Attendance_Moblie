import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/const/debug.dart';
import 'package:gdsc_uos_atttendance/const/padding.dart';
import 'package:gdsc_uos_atttendance/view/components/group_title.dart';
import 'package:gdsc_uos_atttendance/view/components/host_event.dart';
import 'package:gdsc_uos_atttendance/view/components/vertical_padding.dart';

class GroupHostScreen extends StatelessWidget {
  const GroupHostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: whitesColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                GroupTitle(title: "GDSC UOS 모바일팀"),
                VerticalPadding(height: TINY_SPACE),
                InkWell(
                  onTap: () {
                    logger.d("TAPPED");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.group,
                        color: activeColor,
                      ),
                      Container(
                        width: 10,
                      ),
                      Text(
                        "13명",
                        style: TextStyle(
                            color: activeColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                VerticalPadding(height: BIG_SPACE),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    HostEvent(
                        event: "모바일 스크럼", date: "2023.02.17", time: "09:00"),
                  ],
                ),
                VerticalPadding(height: BIG_SPACE),
                Container(
                  color: brightColor,
                  width: 360,
                  height: 150,
                  child: Center(
                      child: Text(
                    "(그룹일정페이지로 이동)",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 30),
                  )),
                ),
                Expanded(child: Container()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.campaign, size: 35, color: baseColor,),
                    Container(width: TINY_SPACE,),
                    SizedBox(
                      width: 300,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20),
                          cursorColor: baseColor,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: baseColor)
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: baseColor)
                              )
                          ),
                        )
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.send, color: baseColor,)
                    )
                  ],
                ),
                Container(height: 48,)
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: baseColor,
          ),
          onPressed: () {
            Beamer.of(context).beamBack();
          },
        ),
        backgroundColor: whitesColor,
        elevation: 0,
        toolbarHeight: 50,
      ),
    );
  }
}
