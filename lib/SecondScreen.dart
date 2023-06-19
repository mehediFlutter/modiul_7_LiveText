import 'package:flutter/material.dart';
import 'main.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen(this.bought);
  final int bought;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Center(child: Text("Congratulations! You reached 10!"),),
      ),
    );
  }
}
