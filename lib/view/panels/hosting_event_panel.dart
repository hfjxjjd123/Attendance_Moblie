import 'package:flutter/material.dart';

class LeadingEventPanel extends StatelessWidget {
  const LeadingEventPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("주최")
          ],
        )
      ],
    );
  }
}
