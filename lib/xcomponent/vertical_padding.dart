
import 'package:flutter/material.dart';

class VerticalPadding extends StatelessWidget {
  VerticalPadding({Key? key, required this.height}) : super(key: key);
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
    );
  }
}
