import 'package:flutter/material.dart';


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
        child: Row(
          children: [
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
                      color: const Color.fromARGB(255, 150, 124, 122),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 50, 
                        width: 50, 
                        color: const Color.fromARGB(255, 89, 194, 255),
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
            
            
                SizedBox(height: 10,),
                Stack(
                  alignment: Alignment.center,
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100, 
                      width: 100, 
                      color: const Color.fromARGB(255, 241, 219, 18),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 50, 
                        width: 50, 
                        color: const Color.fromARGB(255, 201, 24, 218),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 25, 
                        width: 25, 
                        color: const Color.fromARGB(255, 253, 251, 251),
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

          SizedBox(width: 40,),


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
                      color: const Color.fromARGB(255, 11, 26, 235),
                    ),
                    Container(
                      height: 50, 
                      width: 50, 
                      color: const Color.fromARGB(255, 189, 12, 224),
                    ),
                    Container(
                      height: 25, 
                      width: 25, 
                      color: const Color.fromARGB(255, 125, 240, 79),
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
                      color: Colors.red,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 50, 
                        width: 50, 
                        color: const Color.fromARGB(255, 211, 5, 252),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 25, 
                        width: 25, 
                        color: const Color.fromARGB(255, 6, 230, 238),
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
                      color: const Color.fromARGB(255, 243, 227, 3),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 50, 
                        width: 50, 
                        color: const Color.fromARGB(255, 26, 37, 39),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 25, 
                        width: 25, 
                        color: const Color.fromARGB(255, 34, 238, 44),
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
                      color: const Color.fromARGB(255, 160, 146, 145),
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
                        color: Colors.black,
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
                      color: const Color.fromARGB(255, 54, 158, 244),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 50, 
                        width: 50, 
                        color: const Color.fromARGB(255, 248, 248, 248),
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
            
            
                SizedBox(height: 10,),
                Stack(
                  alignment: Alignment.center,
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100, 
                      width: 100, 
                      color: const Color.fromARGB(255, 99, 56, 124),
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
                        color: const Color.fromARGB(255, 26, 245, 216),
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
                      color: const Color.fromARGB(255, 172, 128, 124),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 50, 
                        width: 50, 
                        color: const Color.fromARGB(255, 14, 19, 8),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 25, 
                        width: 25, 
                        color: const Color.fromARGB(255, 9, 248, 61),
                      ),
                    ),
                  ],
                ),
              ],
            ),


          SizedBox(width: 40,),


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
                      color: const Color.fromARGB(255, 235, 37, 6),
                    ),
                    Container(
                      height: 50, 
                      width: 50, 
                      color: const Color.fromARGB(255, 236, 197, 152),
                    ),
                    Container(
                      height: 25, 
                      width: 25, 
                      color: const Color.fromARGB(255, 15, 84, 235),
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
                      color: const Color.fromARGB(255, 243, 16, 213),
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
                        color: const Color.fromARGB(255, 199, 243, 5),
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
                    Positioned(
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
      ),
    );
  }
}