import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/01_statefulWidget_tutorial.dart';
import 'package:tutorial/02_Container_widget.dart';
import 'package:tutorial/03_Row_and_column.dart';
import 'package:tutorial/04_ListView_and_ListTile.dart';
import 'package:tutorial/05_ListView_builder.dart';
import 'package:tutorial/06_ListView_Deep_Dive.dart';
import 'package:tutorial/07_Stack_widget.dart';
import 'package:tutorial/08_GridView.dart';
import 'package:tutorial/09_GridView_builder.dart';
import 'package:tutorial/10_All_banner_concept.dart';
import 'package:tutorial/11_Card_Widget.dart';
import 'package:tutorial/12_Text_widget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Flutter App",
      theme: ThemeData(scaffoldBackgroundColor: Colors.cyan,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.lightGreenAccent,
      )),

      color: Colors.white,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient AppBar"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔥 Banner Section
            Stack(
              children: [
                // Online Image
                CachedNetworkImage(
                  imageUrl:
                      "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    height: 260,
                    color: Colors.grey.shade300,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),

                // Gradient Overlay
                Container(
                  height: 260,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),

                // Top Bar (Like AppBar)
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black45,
                          child: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black45,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Banner Text
                Positioned(
                  left: 16,
                  bottom: 24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discover Nature",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Explore the beauty of the world",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // 🔽 Page Content
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text("Item ${index + 1}"),
                      subtitle: Text("Description goes here"),
                    ),
                  );
                },
              ),
            ),

            //Custom button
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),  // ekhane bottom padding dilam jate kore button gulo bottom navigation bar + FAB er sathe overlap na kore
              child: SingleChildScrollView(
              
                // ekhane SinglechildScrollView use korlam but she kintu jane na je bottomnavigation bar er hight somporke
                // BottomAppBar + FAB(Floating Action Button) screen-এর নিচের জায়গা দখল করছে   
                // কিন্তু SingleChildScrollView সেটা জানে না  তাই buttons bottom navigation bar এর সাথে overlap করছে
                // eijonno body ke always bottomNavigationBar + FAB height মাথায় রেখে padding দিতে হয়
              
                // ekhon etar solution onujayi SingleChildScrollView কে নিচ থেকে একটু padding দাও।
              
              // esara alternate solution hote pare je : safearea diye wrap kora or BottomAppBar e Column diye wrap kore SigleChildScrollView kora 

              
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomButton("1"),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondPage(),
                            ),
                          );
                    }, child: Text("2")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdPage(),
                            ),
                          );
                    }, child: Text("3")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FourthPage(),
                            ),
                          );
                    }, child: Text("4")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FifthPage(),
                            ),
                          );
                    }, child: Text("5")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SixthPage(),
                            ),
                          );
                    }, child: Text("6")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SeventhPage(),
                            ),
                          );
                    }, child: Text("7")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EightPage(),
                            ),
                          );
                    }, child: Text("8")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NinthPage(),
                            ),
                          );
                    }, child: Text("9")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                          );
                    }, child: Text("10")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TenthPage(),
                            ),
                          );
                    }, child: Text("11")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EleventhPage(),
                            ),
                          );
                    }, child: Text("12")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TwelvePage(),
                            ),
                          );
                    }, child: Text("13")),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdPage(),
                            ),
                          );
                    }, child: Text("14")),
                
                
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // 🔴 Center Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.tealAccent,
        child: Icon(Icons.add, size: 30),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 🔻 Bottom Navigation with Curved Shape
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // 🔥 curve shape
        notchMargin: 8,
        color: const Color.fromARGB(255, 240, 184, 3),
        child: SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Left Item
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home), Text("Home")],
              ),

              SizedBox(width: 40), // FAB space
              // Right Item
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.person_outline), Text("Profile")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  CustomButton(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
            child: Text(title),
          ),
        ),

        // Align(
        //   alignment: Alignment.center,
        //   child: ElevatedButton(onPressed: () {}, child: Text(title)),
        // ),

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [ElevatedButton(onPressed: () {}, child: Text(title))],
        // ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [ElevatedButton(onPressed: () {}, child: Text(title))],
        // ),

        // Stack(
        //   children: [
        //     Align(
        //       alignment: Alignment.center,
        //       child: ElevatedButton(onPressed: () {}, child: Text(title)),
        //     ),
        //   ],
        // ),

        // Container(
        //   alignment: Alignment.center,
        //   child: ElevatedButton(onPressed: () {}, child: Text(title)),
        // ),
      ],
    );
  }
}
