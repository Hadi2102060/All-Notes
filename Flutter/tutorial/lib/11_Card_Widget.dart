import 'package:flutter/material.dart';



class EleventhPage extends StatefulWidget {
  const EleventhPage({super.key});

  @override
  State<EleventhPage> createState() => _EleventhPageState();
}

class _EleventhPageState extends State<EleventhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Widget"),
      ),
      body: Card(

        /*  
        ..........Card widget ta maximum je sokol khetre use hoy 

        1. E-commerce product card
        2. Dashboard card design
        3. WhatsApp style chat card
        
        */
        color: Colors.greenAccent,
        elevation: 15,     // elevation use kore amra card ta ke shadow create korte pari
        shadowColor: Colors.red,   // shadow color use korte parbo
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),   //rounder shape ta design kora hoy
          side: BorderSide(
            color: Colors.red,
            width: 5,
          )
        ),
        child: Container(
          
          height: 200, 
          width: 200,
        ),
      ),
    );
  }
}