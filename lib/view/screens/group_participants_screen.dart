import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class GroupParticipantsScreen extends StatelessWidget {
  const GroupParticipantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Beamer.of(context).beamBack();
        },
          child: Container(color: Colors.blue, height: 400, width: 100,)
      ),
    );
  }
}
