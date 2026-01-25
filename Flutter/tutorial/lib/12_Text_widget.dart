import 'package:flutter/material.dart';
import 'package:tutorial/13_TextField.dart';
import 'package:tutorial/main.dart';

class TwelvePage extends StatefulWidget {
  const TwelvePage({super.key});

  @override
  State<TwelvePage> createState() => _TwelvePageState();
}

class _TwelvePageState extends State<TwelvePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widget and Its Properties ")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.limeAccent,
              height: 200,
              width: double.infinity,
              child: Text(
                "I am learning Flutter from scratch, Flutter is awesome! djfjdlfjlsj",
                textAlign: TextAlign.center,       // Text gulo center e dekhabe
                overflow: TextOverflow.ellipsis, // Text jodi overflow hoy tahole shekhane dot dot (....) dekhanor jonno eta use kora hoy
                //textScaleFactor: 2.0,               // Text gulo ke 2 gun barabe
                textScaler: TextScaler.linear(2.0), // Text gulo ke linear vabe 2 gun barabe  and ekhon textScaleFactor use kora hoy nh tar poriborte textScaler.liner() use kora hoy
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.wavy,
                  letterSpacing: 2.0, // Letter gulo er modhye space barabe
                  wordSpacing: 5.0,   // Word gulo er modhye space barabe
                  color: Colors.black,
                ),
                  
              ),
            ),
          ),


          
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 5, 250, 168),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 32, 66, 55),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Text(
                  "Home Screen",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 32, 66, 55),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirteenPage()),
                  );
                },
                child: Text(
                  "Next Screen",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 32, 66, 55),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Previous Screen",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
