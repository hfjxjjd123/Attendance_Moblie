import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_uos_atttendance/router/location.dart';

import 'const/size.dart';

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
          displayLarge: TextStyle(color: Color(0xfff2f2f2), fontSize: 35, fontFamily: "EventFont"),
          displayMedium: TextStyle(color: Color(0xfff2f2f2), fontSize: 23, fontFamily: "EventFont"),

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
      beamLocations: [MainLocation(), GroupHostLocation(), GroupParticipantsLocation(), NotificationLocation()]),
);

