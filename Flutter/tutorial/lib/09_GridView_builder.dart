import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NinthPage extends StatefulWidget {
  const NinthPage({super.key});

  @override
  State<NinthPage> createState() => _NinthPageState();
}

class _NinthPageState extends State<NinthPage> {
  bool isVisible = true;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        isVisible = !isVisible;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Builder and It's Property")),

      /* 
    

    */
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// More than efficient for using Lottie Banner
            Row(
              children: [
                Expanded(
                  child: Lottie.network(
                    "https://assets9.lottiefiles.com/packages/lf20_jcikwtux.json",
                    height: 160,
                  ),
                ),
                Expanded(
                  child: Lottie.asset("assets/lottie.json", height: 160),
                ),
              ],
            ),

            SizedBox(height: 20),

            GridView.count(
              shrinkWrap:
                  true, // এটা দেয় GridView নিজের height based on children
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,

              children: [
                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shoe",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 500.00",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 66),
                                Icon(Icons.star, color: Colors.amberAccent),
                                Icon(Icons.star, color: Colors.amberAccent),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg", //3
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/3394650/pexels-photo-3394650.jpeg", //4
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HeadPhone",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 850.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg", //5
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sunglass",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 220.00",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/292958/pexels-photo-292958.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beauty & Cosmetics",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/276514/pexels-photo-276514.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Electronics",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 750.25",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/1660906/pexels-photo-1660906.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bags",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/292999/pexels-photo-292999.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shoe",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 1650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/1334597/pexels-photo-1334597.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 22,000.00",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/271693/pexels-photo-271693.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/846723/pexels-photo-846723.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Painting",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 1650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/2908177/pexels-photo-2908177.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/1356255/pexels-photo-1356255.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/29653806/pexels-photo-29653806.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shari",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/1316236/pexels-photo-1316236.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/247322/pexels-photo-247322.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 250, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg",
                            ),
                            fit: BoxFit
                                .cover, // kono akta image container e cover koranor jonno eta use kora hoy khub important ata cara cover hobe nh
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "BDT 650.55",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 66),

                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
