import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TenthPage extends StatefulWidget {
  const TenthPage({super.key});

  @override
  State<TenthPage> createState() => _TenthPageState();
}

class _TenthPageState extends State<TenthPage> {
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
      body: SingleChildScrollView(
        child: Column(
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
        
            // Animated Opacity
            AnimatedOpacity(
              opacity: isVisible ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              child: bannerUI(),
            ),
        
            Stack(
              children: [
                Container(
                  height: 160,
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Text(
                    "Mega Sale 🔥",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
        


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
                  child: Lottie.asset(
                    "assets/lottie.json",
                    height: 160,
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

Widget bannerItem(String text, Color color) {
  return Container(
    height: 150,
    width: 300,
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
