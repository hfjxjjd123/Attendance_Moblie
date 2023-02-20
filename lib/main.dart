import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/const/colors.dart';
import 'package:gdsc_uos_atttendance/view/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Color(0xfff2f2f2), fontSize: 35, fontFamily: "EventFont"),
          displayMedium: TextStyle(color: Color(0xfff2f2f2), fontSize: 23, fontFamily: "EventFont")
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

