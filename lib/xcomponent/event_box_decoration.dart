import 'package:flutter/material.dart';

import '../../zconst/colors.dart';

BoxDecoration eventBoxDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.25),
        spreadRadius: 3,
        blurRadius: 3,
        offset: Offset(0, 1),
      ),
    ],
    borderRadius: BorderRadius.circular(15),
    color: baseColor
);
