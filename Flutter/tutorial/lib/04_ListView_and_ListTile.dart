import 'package:flutter/material.dart';
import 'package:tutorial/05_ListView_builder.dart';
import 'package:tutorial/main.dart';

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

        // The limitation of Listview use when i long form design using this ListView then it will be difficult to design the form properly because ListView provides a linear layout and it may not be suitable for complex form designs that require multiple rows and columns or specific alignments.
        // when a form design using Listview then i click the submit button then some data will be loss because ListView only renders the visible items on the screen and disposes of the off-screen items to optimize performance. So, when the user scrolls the form, some of the input fields may get disposed of, leading to data loss.
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
                shape: BoxShape
                    .circle, // person icon er carpashe je circle ta ase seta bananor jonno BoxDecoration use kora hoyeche
                color: Colors.red,
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

          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orangeAccent,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("Natural picture that looking nice"),
            subtitle: Text(
              "I am impress that looking picture and want to see it again and again",
            ),
          ),

          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orangeAccent,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://picsum.photos/400/200",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("Natural picture that looking nice"),
            subtitle: Text(
              "I am impress that looking picture and want to see it again and again",
            ),
          ),

          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orangeAccent,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=400&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("Natural picture that looking nice"),
            subtitle: Text(
              "I am impress that looking picture and want to see it again and again",
            ),
          ),

          ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orangeAccent,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1518709268805-4e9042af9f23?auto=format&fit=crop&w=400&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("Natural picture that looking nice"),
            subtitle: Text(
              "I am impress that looking picture and want to see it again and again",
            ),
          ),

          SizedBox(height: 40),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 120, 8, 247),
                  ),
                  child: Text(
                    "Previous Screen",
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
                      MaterialPageRoute(builder: (context) => FifthPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                  ),
                  child: Text(
                    "Next Screen",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                    backgroundColor: Colors.orangeAccent,
                  ),
                  child: Text(
                    "Go to Home Screen",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
