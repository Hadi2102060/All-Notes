//........................Inhereted widget...............

import 'package:allpartflutter/00_homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InteractiveHomescreen(),
      theme: ThemeData(primaryColor: Colors.tealAccent),
    );
  }
}
