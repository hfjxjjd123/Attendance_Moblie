import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/const/padding.dart';
import 'package:gdsc_uos_atttendance/view/components/group_members.dart';
import 'package:gdsc_uos_atttendance/view/components/group_title.dart';
import 'package:gdsc_uos_atttendance/view/components/host_event.dart';
import 'package:gdsc_uos_atttendance/view/components/vertical_padding.dart';

import '../../const/size.dart';
import '../../domain/event.dart';
import '../../domain/group.dart';
import '../../domain/host.dart';

class GroupHostScreen extends StatelessWidget {
  GroupHostScreen({Key? key, required this.group, required this.host}) : super(key: key);
  Group group;
  Host host;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: whitesColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SIZE.width * 0.08),
            child: Column(
              children: [
                GroupTitle(title: group.name),
                VerticalPadding(height: TINY_SPACE),
                GroupMembers(
                  numOfMember: group.mates.length + group.hosts.length,
                ),
                VerticalPadding(height: BIG_SPACE),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: SIZE.width * 0.055),
                    ),
                    HostEvent(
                        event: group.nextEvent),
                  ],
                ),
                //다음 일정이 없을 때를 대비해서 없음 컴포넌트도 생성해야함.
                VerticalPadding(height: BIG_SPACE),
                Container(
                  color: brightColor,
                  width: SIZE.width*0.8,
                  height: SIZE.height*0.15,
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
                    Icon(
                      Icons.campaign,
                      size: SIZE.width*0.08,
                      color: baseColor,
                    ),
                    Container(
                      width: TINY_SPACE,
                    ),
                    SizedBox(
                        width: SIZE.width*0.6,
                        child: TextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: SIZE.width*0.04),
                          cursorColor: baseColor,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: baseColor)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: baseColor))),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: baseColor,
                          size: SIZE.width*0.05,
                        ))
                  ],
                ),
                VerticalPadding(
                  height: SIZE.height*0.06,
                )
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
        toolbarHeight: SIZE.height*0.06,
      ),
    );
  }
}
