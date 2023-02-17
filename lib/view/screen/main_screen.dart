import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: (){},
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: Container(
        color: Colors.amberAccent,
      ),
    );
  }
}
