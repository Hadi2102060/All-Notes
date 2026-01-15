import 'package:flutter/material.dart';




class EightPage extends StatefulWidget {
  const EightPage({super.key});

  @override
  State<EightPage> createState() => _EightPageState();
}

class _EightPageState extends State<EightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Widget Use"),
      ),

      body: Column(
        children: [
          Container(
            color: Colors.red,
          ),

          Container(
            color: Colors.black,
          ),


          Container(
            color: Colors.orange,
          ),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ]),
    );
  }
}