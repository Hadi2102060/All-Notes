import 'package:flutter/material.dart';
import 'package:tutorial/09_GridView_builder.dart';
import 'package:tutorial/main.dart';

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
        title: Row(
          children: [
            Text("GridView Widget Use"),
            SizedBox(width: 80,),
            
            Flexible(
              child: PopupMenuButton(
                icon: Icon(Icons.menu),
                onSelected: (value) {
                  if(value == "Option 1"){
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
                  }
              
                  else if(value == "Option 2"){
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NinthPage()),
                );
                  }
              
                  else{
                    Navigator.pop(context);
                  }
                },


                // Menu button e ki ki option show korbe shetar kaj ekhane nise kora hoyese
                itemBuilder: (BuildContext context)=> <PopupMenuEntry<String>>[
                  const  PopupMenuItem<String>(
                    
                    value: "Option 1",
                    child: Text("Home Screen"),
                    
                    ),
              
              
              
                    const  PopupMenuItem<String>(
                    
                    value: "Option 2",
                    child: Text("Next Screen"),
                    
                    ),
              
              
                    const  PopupMenuItem<String>(
                    
                    value: "Option 2",
                    child: Text("Previous Screen"),
                    
                    ),
                ]
                
                ),
            )
          ],
        )
        
        
        
        ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(    // ekhane GridView widget er pore je count royese sheta hosse akta Constructor jeta amra GridView.count hishebe use koresi
          crossAxisCount: 2,

          /// eta mane horizontally koto gulo line hobe
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
                          "https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg",  //3
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
                          "https://images.pexels.com/photos/3394650/pexels-photo-3394650.jpeg",  //4
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
                          "https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg",  //5 
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
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        
        items: [
          
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
