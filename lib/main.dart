import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter app'),
        ),
        body: const GradientContainer(<Color>[
          Colors.red,
          Colors.green,
          Colors.yellow,
          Colors.blue,
        ]),
      ),
    );
  }
}
