import 'package:flutter/material.dart';


class SixthPage extends StatefulWidget {
  const SixthPage({super.key});

  @override
  State<SixthPage> createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sixth Page (ListView Deep Dive)",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  tileColor: Colors.teal.shade100,
                  title: Text("Hadi"),
                  subtitle: Text("Flutter Developer"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal.shade300,
                    backgroundImage: AssetImage("assets/hadi.jpg"),
                  ),
                  trailing: Icon(Icons.star, color: Colors.amber,),
                ),
                ListTile(
                  tileColor: Colors.teal.shade200,
                  title: Text("Yasin"),
                  subtitle: Text("Data Scientist"),
                ),
                ListTile(
                  tileColor: Colors.teal.shade300,
                  title: Text("shuvo"),
                  subtitle: Text("Programmer"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(),
          SizedBox(height: 20),
          Container()
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.blueGrey.shade900,

        selectedItemColor: Colors.orangeAccent,

        unselectedItemColor: Colors.blueGrey.shade300,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu_open,color: Colors.white,), label: "Basic",),
          BottomNavigationBarItem(icon: Icon(Icons.text_rotate_vertical), label: "Vertical"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Horizontal"),
        ]
        ),
    );
  }
}