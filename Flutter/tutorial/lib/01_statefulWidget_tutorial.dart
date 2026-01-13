import 'package:flutter/material.dart';
import 'package:tutorial/02_Container_widget.dart';
// import 'package:tutorial/Container_widget.dart';
// import 'package:tutorial/main.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String message = "";
  // int _currentIndex = 0;

  // final List<Widget> _pages = [MyApp(), SecondPage(), ThirdPage()];

  // Current state change korar jonno amader initstate method use korte hoy and changes gula setState method er moddhe korte hoy.
  @override
  void initState() {
    message = "Hello This is Stateful Widget"; //Current state
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Md Hadi")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // IndexedStack(index: _currentIndex, children: _pages),
            Center(child: Text(message)),

            Container(
              alignment: Alignment.center,

              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "State now changes"; // New state
                  });

                  print(message);
                },
                child: Text("Change State"),
              ),
            ),

            SizedBox(height: 100),

            Row(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Previous Page"),
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                    },
                    child: Text("Next Page"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _currentIndex,
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: "Previous Page",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: "Next Page",
          ),
        ],
      ),
    );
  }
}
