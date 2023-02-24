import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class AppbarIconButton extends StatelessWidget {
  AppbarIconButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);
  Icon icon;
  Null Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: icon,
      color: graysColor,
      onPressed: onPressed,
    );
  }
}
