import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/statefulWidget_tutorial.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Flutter App",
      theme: ThemeData(scaffoldBackgroundColor: Colors.cyan),

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
                padding: EdgeInsets.all(16),
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
            CustomButton("second Page"),
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
          height: 70,
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
                MaterialPageRoute(builder: (context) => SecondPage()),
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
