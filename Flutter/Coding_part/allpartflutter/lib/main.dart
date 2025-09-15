//........................Inhereted widget...............

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(displayName: "Developer Hadi"),
      theme: ThemeData(primaryColor: Colors.tealAccent),
    );
  }
}

class Home extends StatelessWidget {
  final String displayName;
  const Home({super.key, required this.displayName});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(
      context,
    ).primaryColor; // ei primary color ta ami jekono jaygai use korte parbo

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Inherited Widget"),
      ),
      //backgroundColor: primaryColor,
      body: Center(child: Text("$displayName")),
    );
  }
}
