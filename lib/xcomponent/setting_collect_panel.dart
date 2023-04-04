import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/xcomponent/modify_username_dialog.dart';
import 'package:gdsc_uos_atttendance/zconst/size.dart';

import '../../zconst/colors.dart';

class SettingCollectPanel extends StatelessWidget {
  const SettingCollectPanel({Key? key}) : super(key: key);

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
            Text(
              " 설정",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Container(
              height: 10,
            ),
            InkWell(
              onTap: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ModifyUsernameDialog();
                  }
                );
              },
              child: Container(
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: baseColor,
                ),
                child: Text(
                  "닉네임 재설정",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),
                ),
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
                color: baseColor,
              ),
              child: Text(
                "새 그룹 생성",
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
                color: baseColor,
              ),
              child: Text(
                "구글 캘린더 동기화",
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
