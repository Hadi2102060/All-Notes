import 'package:flutter/material.dart';
import 'package:tutorial/08_GridView.dart';
import 'package:tutorial/main.dart';


class SeventhPage extends StatelessWidget {
  const SeventhPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget and Its Properties"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 50,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: Colors.red,
                        ),
                        Container(
                          height: 50, 
                          width: 50, 
                          color: Colors.lightGreenAccent,
                        ),
                        Container(
                          height: 25, 
                          width: 25, 
                          color: Colors.black,
                        ),
                      ],
                    ),
                      
                    
                
                
                
                    SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 1, 10, 14),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: const Color.fromARGB(255, 240, 129, 2),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: const Color.fromARGB(255, 102, 250, 3),
                          ),
                        ),
                      ],
                    ),
                
                
                
                    SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 188, 2, 245),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: const Color.fromARGB(255, 6, 207, 207),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: const Color.fromARGB(255, 245, 158, 76),
                          ),
                        ),
                      ],
                    ),
                
                
                    SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 54, 244, 86),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: const Color.fromARGB(255, 60, 11, 236),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: const Color.fromARGB(255, 161, 3, 3),
                          ),
                        ),
                      ],
                    ),
                
                
                    SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 245, 244, 244),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: const Color.fromARGB(255, 226, 4, 197),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            
              SizedBox(width: 80,),
            
            
            
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    
                    
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 8, 240, 240),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: const Color.fromARGB(255, 8, 12, 4),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: const Color.fromARGB(255, 247, 246, 246),
                          ),
                        ),
                      ],
                    ),
                
                
                
                    SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 176, 5, 255),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: const Color.fromARGB(255, 255, 136, 89),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: const Color.fromARGB(255, 29, 234, 241),
                          ),
                        ),
                      ],
                    ),
                
                
                
                    SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 77, 59, 59),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: const Color.fromARGB(255, 135, 156, 111),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: const Color.fromARGB(255, 248, 244, 3),
                          ),
                        ),
                      ],
                    ),
                
                
                    SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 209, 123, 163),
                        ),
                        Positioned(    // position widget use kore amra akta container er modde arekta container koto vabe move korano jay sheta kora jay jekono jaygai vitorer container ke move korano jay ei position widget use kore
            
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: const Color.fromARGB(255, 117, 189, 89),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: const Color.fromARGB(255, 7, 0, 0),
                          ),
                        ),
                      ],
                    ),
                
                
                    SizedBox(height: 10,),
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                     // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100, 
                          width: 100, 
                          color: const Color.fromARGB(255, 54, 158, 244),
                        ),
                        Positioned(
                          bottom: -25,
                          right: 10,
                          child: Container(
                            height: 50, 
                            width: 50, 
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 25, 
                            width: 25, 
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            
            
            
               
            
                
              ],
            ),



           SizedBox(height: 80,), 


           Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 203, 247, 8),
                ),
                child: Text(
                  "Previous Screen",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 15, 15, 15),
                  ),
                ),
              ),
            ),



            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EightPage ()),
                    );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 207, 8, 247),
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
                  backgroundColor: const Color.fromARGB(255, 84, 247, 8),
                ),
                child: Text(
                  "Go to Home Screen",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 12, 12, 12),
                  ),
                ),
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