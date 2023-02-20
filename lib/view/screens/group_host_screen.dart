import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class GroupHostScreen extends StatelessWidget {
  const GroupHostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onTap: (){
            Beamer.of(context).beamBack();
          },
          child: Container(color: Colors.red, height: 400, width: 100,)
      ),
    );
  }
}
