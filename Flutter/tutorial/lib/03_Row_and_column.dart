import 'package:flutter/material.dart';
import 'package:tutorial/04_ListView_and_ListTile.dart';
import 'package:tutorial/main.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Page (Row and Column)"),
        backgroundColor: Colors.orangeAccent,
      ),

      body: Row(

        // Row normally tar child er joto tuku space lage toto tuku space ney er beshi space ney na
        // tai amra jodi chay je amader row puro screen a jabe tahole amra row er parent ke Expanded diye wrap korte pari
        children: [
          Expanded(         // Expanded diye row er parent ke wrap kora holo
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(             // expand korar por kebol ei align ta kaj korbe  otherwise kaj korbe na
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: const Color.fromARGB(255, 202, 247, 5),
                      child: Text(
                        "ROW Example: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(color: Colors.red, height: 100, width: 100),
                      SizedBox(width: 10),
                      Container(color: Colors.green, height: 100, width: 100),
                      SizedBox(width: 10),
                      Container(color: Colors.blue, height: 100, width: 100),
                    ],
                  ),


                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(8.0),
                      color: const Color.fromARGB(255, 80, 5, 255),
                      child: Text(
                        "COLUMN Example: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 44, 243, 5),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(color: Colors.purple, height: 100, width: 100),
                        SizedBox(height: 10),
                        Container(color: Colors.orange, height: 100, width: 100),
                        SizedBox(height: 10),
                        Container(color: Colors.yellow, height: 100, width: 100),


                        
                      ],
                    ),
                  ),



                  SizedBox(height: 140),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    


                    // jodi amra screen er size onujayi button/ content gulor size fit korate chai tahole amra prottekta content ke Expanded or Flexible diye wrap korte pari
                    // ekhane ami button guloke Expanded diye wrap korechi jate kore button gulo screen er size onujayi adjust hoye jai
                    //Another solution hote pare je amra button guloke scrollable koraite chai tahole amra SingleChildScrollView diye wrap korte pari
                    // another solution hote pare je amra ListView (professonal way) diye wrap korte pari
                    // jodi amra wrap widget diye kori tahole button gulo screen er fixed size over korle new line e chole jabe
                    
                    children: [
                      Expanded(
                        child: ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Previous Screen",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          
                          color: const Color.fromARGB(255, 245, 5, 5)
                        ),)),
                      ),


                        Expanded(
                          child: ElevatedButton(onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FourthPage(),
                            ),
                          );
                          }, child: Text("Next Screen",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 245, 5, 5)
                          ),)),
                        ),


                        Expanded(
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                          );
                          }, child: Text("Go to Homepage",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 245, 5, 5)
                          ),)),
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 4),
        ],
      ),
    );
  }
}
