import 'package:flutter/material.dart';

import '../../zconst/size.dart';

class AdvPanel extends StatelessWidget {
  const AdvPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SIZE.width,
      height: 120,
      color: Colors.indigo,
    );
  }
}
