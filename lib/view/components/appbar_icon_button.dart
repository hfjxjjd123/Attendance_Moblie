import 'package:flutter/material.dart';

import '../../const/colors.dart';

class AppbarIconButton extends StatelessWidget {
  AppbarIconButton({Key? key, required this.icon}) : super(key: key);
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: icon,
      color: graysColor,
      onPressed: (){},
    );
  }
}
