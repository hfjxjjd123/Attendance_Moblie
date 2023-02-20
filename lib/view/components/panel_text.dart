import 'package:flutter/material.dart';

import '../../const/raw_strings.dart';

class PanelText extends StatelessWidget {
  PanelText({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 40,),
        Text(title, style: TextStyle(fontSize: 25, fontFamily: "TagFont"),),
        Expanded(child: Container())
      ],
    );
  }
}
