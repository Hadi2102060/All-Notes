import 'package:flutter/material.dart';
import 'package:tutorial/03_Row_and_column.dart';
import 'package:tutorial/main.dart';

// Note for using Container Widget in Flutter that  is  when you use the color in the Container Widget then you can not use the color in the decoration property of the Container Widget. You have to use either color or decoration property in the Container Widget.
// But if you want to use both color and decoration property in the Container Widget then you have to use the color in the decoration property of the Container Widget only.

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page (Container Widget)"),
        backgroundColor: Colors.limeAccent,
      ),
      body: Center(
        child: Column(
          children: [
            // First Container Widget Example :
            Container(
              // color: Colors.amber,
              height: 200,
              width: 200,
              child: Text("I am Hadi in Third Page"),
              alignment: Alignment.center,
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.purpleAccent, width: 4.0),
              ),
            ),

            // Second Container Widget Example :
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.yellow],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: Alignment.center,
              child: Text("Container with Gradient Background"),
            ),
            SizedBox(height: 20),

            // Third Container Widget Example :
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: Alignment.center,
              child: Text(
                "Container with Background Image",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black45,
                ),
              ),
            ),

            SizedBox(height: 20),

            //- Fourth Container Widget Example :
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: Alignment.center,
              child: Text("Container with Shadow"),
            ),

            SizedBox(height: 20),

            // Fifth Container Widget Example :
            Row(
              children: [
                Container(
                  // color: Colors.amber,
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text("I am Hadi in Third Page")],
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.purpleAccent, width: 4.0),
                  ),
                  transform: Matrix4.rotationZ(.9), // Rotating the container
                ),

                Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Previous Page"),
                      ),

                      SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdPage(),
                            ),
                          );
                        },
                        child: Text("Next Page"),
                      ),

                      SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                          );
                        },
                        child: Text("Go to Main Page"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
