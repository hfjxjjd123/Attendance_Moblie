import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitesColor,
        leading: IconButton(
          icon: const Icon(Icons.settings),
          color: graysColor,
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: (){},
            color: graysColor,
          )
        ],
        elevation: 0,
      ),
      body: Container(
        color: whitesColor,
      ),
    );
  }
}
