import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/xrouter/location.dart';

import 'zconst/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Attendance',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Color(0xfff0f0f0), fontSize: 35, fontFamily: "EventFont"),
          displayMedium: TextStyle(color: Color(0xfff0f0f0), fontSize: 23, fontFamily: "EventFont"),
          displaySmall: TextStyle(color: Color(0xfff0f0f0), fontSize: 20, fontFamily: "EventFont"),

          titleLarge: TextStyle(color: Color(0xff202126), fontSize: 40, fontFamily: "EventFont"),
          titleMedium: TextStyle(color: Color(0xff202126), fontSize: 25, fontWeight: FontWeight.w500),
          titleSmall: TextStyle(color: Color(0xff202126), fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      routeInformationParser: BeamerParser(),
      routerDelegate: _routerDelegate,
      backButtonDispatcher:
      BeamerBackButtonDispatcher(delegate: _routerDelegate),
      // home: const MainScreen(),
    );
  }
}

BeamerDelegate _routerDelegate = BeamerDelegate(
  locationBuilder: BeamerLocationBuilder(
      beamLocations: [MainLocation(), GroupHostLocation(), GroupParticipantsLocation(), NotificationLocation(), SettingLocation()]),
);

