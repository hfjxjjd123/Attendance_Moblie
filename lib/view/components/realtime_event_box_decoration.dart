import 'package:flutter/material.dart';

import '../../const/colors.dart';

BoxDecoration realtimeEventBoxDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.75),
        spreadRadius: 3,
        blurRadius: 3,
        offset: Offset(0, 1),
      ),
    ],
    borderRadius: BorderRadius.circular(15),
    color: activeColor
);
