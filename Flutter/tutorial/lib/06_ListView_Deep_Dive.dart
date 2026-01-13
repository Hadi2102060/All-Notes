import 'package:flutter/material.dart';
import 'package:tutorial/07_Stack_widget.dart';
import 'package:tutorial/main.dart';

class SixthPage extends StatefulWidget {
  const SixthPage({super.key});

  @override
  State<SixthPage> createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  int _currentIndex = 0;

  final List<Widget> _screen = [Basic(), Vertical(), Horizontal()];

  void onTappedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sixth Page (ListView Deep Dive)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: _screen[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey.shade900,

        selectedItemColor: Colors.orangeAccent,

        unselectedItemColor: Colors.blueGrey.shade300,

        currentIndex: _currentIndex,
        onTap: onTappedIndex,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_open, color: Colors.white),
            label: "Basic",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_rotate_vertical),
            label: "Vertical",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Horizontal"),
        ],
      ),
    );
  }
}

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              ListTile(
                tileColor: Colors.teal.shade100,
                title: Text("Hadi"),
                subtitle: Text("Flutter Developer"),
                leading: CircleAvatar(
                  backgroundColor: Colors.teal.shade300,
                  backgroundImage: AssetImage("assets/hadi.jpg"),
                ),
                trailing: Icon(Icons.star, color: Colors.amber),
              ),
              ListTile(
                tileColor: Colors.teal.shade200,
                title: Text("Yasin"),
                subtitle: Text("Data Scientist"),
                trailing: Icon(Icons.star, color: Colors.amber),
                leading: CircleAvatar(
                  backgroundColor: Colors.teal.shade300,
                  backgroundImage: AssetImage("assets/yasin.jpg"),
                ),
              ),
              ListTile(
                tileColor: Colors.teal.shade300,
                title: Text("shuvo"),
                subtitle: Text("Programmer"),
                trailing: Icon(Icons.star, color: Colors.amber),
                leading: CircleAvatar(
                  backgroundColor: Colors.teal.shade300,
                  backgroundImage: AssetImage("assets/shuvo.jpg"),
                ),
              ),

            SizedBox(height: 100,),

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
                      MaterialPageRoute(builder: (context) => SeventhPage ()),
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
        SizedBox(height: 20),
        Container(),
        SizedBox(height: 20),
        Container(),
      ],
    );
  }
}

class Vertical extends StatefulWidget {
  const Vertical({super.key});

  @override
  State<Vertical> createState() => _VerticalState();
}

class _VerticalState extends State<Vertical> {
  final items = List.generate(100, (counter) => "Item $counter");
  @override
  Widget build(BuildContext context) {
    /*...............ekhaner SeparedBuilder er maddome custom divider line banano jay jemon dot dot line .........

    // return ListView.separated(
    //   separatorBuilder: (context, index) => Row(
    //     children: List.generate(20, (context)=>
    //       Expanded(child: Container(
    //         margin: EdgeInsets.symmetric(horizontal: 7),
    //         height: 1, 
    //         color: const Color.fromARGB(255, 253, 252, 252),
    //       )))

    //   ),




    //.........shudu gap chaile ei vabe korbe.............

    // separatorBuilder: (context, index) {
    //   return SizedBox(height: 15);
    //    },



    ................Card Style Divider (Box) banate chaile ei vabe korbe.............

  return ListView.separated(
      //
      separatorBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          height: 8,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },



      .............Icon + Divider (Fancy)..............

    return ListView.separated(
      
      separatorBuilder: (context, index) {
        return Row(
          children: [
            Expanded(child: Divider(thickness: 1)),
            Icon(Icons.star, size: 16, color: Colors.amber),
            Expanded(child: Divider(thickness: 1)),
          ],
        );
      },


......................Gradient Divider (Advanced 🔥)....................

      return ListView.separated(
      //
      separatorBuilder: (context, index) {
        return Container(
          height: 2,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.blue, Colors.transparent],
            ),
          ),
        );
      },



    */

    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        height: 2, // prottekta item er modde 2 height er space dibe
        thickness: 5, // divider line er purotto
        indent: 20, // left theke divider line ta 20 space niye start hobe
        endIndent: 20, // right theke divider line ta 20 space niye ses hobe
        color: Colors.black,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Item $index"),
          leading: CircleAvatar(
            backgroundColor: Colors.teal.shade300,
            child: Text("$index"),
          ),
        );
      },
    );
  }
}

class Horizontal extends StatefulWidget {
  const Horizontal({super.key});

  @override
  State<Horizontal> createState() => _HorizontalState();
}

class _HorizontalState extends State<Horizontal> {
  final items = List.generate(100, (counter) => "Item $counter");
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) {
        return Container(
          height: 2,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.blue, Colors.transparent],
            ),
          ),
        );
      },
      itemCount: items.length,
      itemBuilder: (context, index) {
        return SizedBox(
          
          height: 100,  
          width: 90,
          child: ListTile(
            tileColor: Colors.lightGreenAccent,
            title: Text("Item $index"),
            
          ),
        );
      },
    );
  }
}
