import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import '../const/size.dart';
import '../view/screens/main_screen.dart';

class MainLocation extends BeamLocation{
  @override
  List<BeamPage> buildPages(context, state) {
    SIZE = MediaQuery.of(context).size;

    return [
      BeamPage(
          child: MainScreen(),
          key: const ValueKey('main')
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ["/main"];

}
