import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String message = "";

  @override
  void initState() {
    message = "Hello This is Stateful Widget";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Md Hadi")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(message)),

            Container(
              alignment: Alignment.center,

              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "State now changes";
                  });

                  print(message);
                },
                child: Text("Change State"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
