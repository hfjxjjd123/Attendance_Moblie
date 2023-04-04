import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/zconst/size.dart';

import '../../zconst/colors.dart';

class GroupCollectPanel extends StatelessWidget {
  const GroupCollectPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.all(SIZE.width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10,
            ),
            Text(
              " 그룹",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: highlightColor,
              ),
              child: Text(
                "GDSC UOS 모바일팀",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: highlightColor,
              ),
              child: Text(
                "동아리",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),
              ),
            ),
            Container(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
