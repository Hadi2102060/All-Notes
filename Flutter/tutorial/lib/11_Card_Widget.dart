import 'package:flutter/material.dart';
import 'package:tutorial/12_Text_widget.dart';
import 'package:tutorial/main.dart';

class EleventhPage extends StatefulWidget {
  const EleventhPage({super.key});

  @override
  State<EleventhPage> createState() => _EleventhPageState();
}

class _EleventhPageState extends State<EleventhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Widget")),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),

            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/hadi.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //2
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/child.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 3
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/shuvo.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //4
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/yasin.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //5
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/girl.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //6
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/love.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //7
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/hadi.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //8
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/nature2.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //9
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/child2.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //10
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/shuvo.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //11
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/yasin.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //12
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/love.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //13
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/hadi.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //14
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/nature2.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //15
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),

            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/shuvo.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //16
          Card(
            /*  
          ..........Card widget ta maximum je sokol khetre use hoy 
        
          1. E-commerce product card
          2. Dashboard card design
          3. WhatsApp style chat card
          
          */
            color: Colors.greenAccent,
            elevation:
                15, // elevation use kore amra card ta ke shadow create korte pari
            shadowColor: Colors.red, // shadow color use korte parbo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                50,
              ), //rounder shape ta design kora hoy
              side: BorderSide(color: Colors.red, width: 5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(
                "assets/nature.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
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
                    MaterialPageRoute(builder: (context) => TwelvePage()),
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
