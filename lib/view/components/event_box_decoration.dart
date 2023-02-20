import 'package:flutter/material.dart';

import '../../const/colors.dart';

BoxDecoration eventBoxDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 5,
        offset: Offset(0, 1),
      ),
    ],
    borderRadius: BorderRadius.circular(20),
    color: baseColor
);
