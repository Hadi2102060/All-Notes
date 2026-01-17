import 'dart:async';

import 'package:flutter/material.dart';

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
    ................Animation করার সবচেয়ে সহজ ৫টা উপায়.........................


    01. AnimatedContainer (সবচেয়ে সহজ) Widget use kore banner banano

    02. PageView (Sliding Banner / Carousel)   -----> Amazon / Daraz style sliding banner


    03. AnimatedOpacity (Fade Banner)  -----> smooth and premium ui looking

    04. Stack + Positioned (Text overlay animation)  -----> Mostly using real app and button add kora jay

    05. Lottie Animation Banner (Next Level)   ---> JSON animation (Very professional) and eta just dependency add kore url use kore kora hoy



    ekhon question hosse konta kokhon use korbo sheta hosse je nise arrow sign diye dekhano holo................


   i)  E-commerce  ----->   PageView + Image ( eita diye banner ta banabo)

   ii)  Simple App  ----->  AnimatedContainer (eita diye banner ta banabo)

   iii) Premium UI  ------>  Opacity + Stack

   iv)  Startup App  ------> Lottie

   v) Ads / Offer  --------> Carousel Banner

    */
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // For Simple App
          AnimatedContainer(
            duration: Duration(seconds: 1),
            height: 160,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
            ),

            child: Center(
              child: Text(
                "Special Offers 🎉",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // For E-Commerce App
          SizedBox(
            height: 180,
            child: PageView(
              children: [
                bannerItem("hadi", Colors.white),
                bannerItem("E-commerce App", Colors.green),
                bannerItem("50% Discount", Colors.blue),
              ],
            ),
          ),

          AnimatedOpacity(
            opacity: isVisible? 1.0 : 0.0,
            duration: Duration(seconds: 1),
            child: bannerUI(),
          ),
        ],
      ),
    );
  }
}

Widget bannerItem(String text, Color color) {
  return Container(
    margin: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
    ),

    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    ),
  );
}

Widget bannerUI() {
  return Container(
    height: 180,
    margin: EdgeInsets.all(12),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://images.pexels.com/photos/3394650/pexels-photo-3394650.jpeg",
        ),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
  );
}
