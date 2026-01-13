import 'package:flutter/material.dart';
import 'package:tutorial/06_ListView_Deep_Dive.dart';
import 'package:tutorial/main.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  List<int> list = [];

  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      list.add(i);
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fifth Page (ListView.builder) and it's Properties"),
        backgroundColor: const Color.fromARGB(255, 243, 207, 6),
      ),

      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                tileColor: const Color.fromARGB(255, 206, 194, 240), // tileColor diye ListTile er background color set kora hoy
                textColor: const Color.fromARGB(255, 10, 10, 10),     // textColor diye ListTile er text color set kora hoy
                title: Text(
                  "Item ${list[index]}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 245, 1, 1),
                  ),
                ),
              ),


              SizedBox(height: 10),


              
            ],
          );
        },

        
      ),


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 120, 8, 247),
                ),
                child: Text(
                  "Previous Screen",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 254, 254),
                  ),
                ),
              ),
            ),



            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SixthPage ()),
                    );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 120, 8, 247),
                ),
                child: Text(
                  "Next Screen",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 254, 254),
                  ),
                ),
              ),
            ),




            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 120, 8, 247),
                ),
                child: Text(
                  "Go to Home Screen",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 254, 254),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
