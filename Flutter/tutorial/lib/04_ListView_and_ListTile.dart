import 'package:flutter/material.dart';



class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fifth Page (ListView and ListTile)"),
        backgroundColor: Colors.limeAccent,
      ),

      body: ListView(

        // ListView normally scrollable hoy tai amra jodi ListView er moddhe onek gulo widget add kori tahole seta scrollable hobe

        // ListView and Column er moddhe difference holo je Column scrollable hoy na kintu ListView scrollable hoy
        // ListTile holo ek dhoroner predefined widget ja amader list er item gulo ke easily create korte help kore 
        children: [
          Text("Hadi"),
          Text("Hadi"),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Email"),
            subtitle: Text("ug2102060@cse.pstu.ac.bd"),
          ),

          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,       // person icon er carpashe je circle ta ase seta bananor jonno BoxDecoration use kora hoyeche
                color: Colors.red
                
              ),
              child: Icon(Icons.person),

            ),

            title: Text("Md Hadi"),
            subtitle: Text("Patuakhali Science and Technology University"),

          ),

         ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightGreenAccent,
            ),
            child: Icon(Icons.call),
          ),

          title: Text("Phone Number"),
          subtitle: Text("+8801700000000"),
         ),

         



        ],
      ),
    );
  }
}



