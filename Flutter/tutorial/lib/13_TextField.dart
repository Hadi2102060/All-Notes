import 'package:flutter/material.dart';

class ThirteenPage extends StatefulWidget {
  const ThirteenPage({super.key});

  @override
  State<ThirteenPage> createState() => _ThirteenPageState();
}

class _ThirteenPageState extends State<ThirteenPage> {
  String text = "";
  bool _secure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField Widget and Its Properties")),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 20.0,
            ),
            child: SizedBox(
              height: 50,
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300], // Background color of TextField
                  label: Text(
                    "Name",
                  ), // label text jeta TextField er upper e thakbe
                  hintText:
                      'Enter your name', // hint text jeta TextField er vitore thakbe
                  prefixIcon: Icon(
                    Icons.account_circle,
                  ), // TextField er vitore left side first e icon dekhabe

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ), // TextField er border ke circular korbe
                  ),
                ),

                keyboardType: TextInputType.name,
              ),
            ),
          ),

          // SizedBox(height: 1.0,),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 20.0,
            ),
            child: SizedBox(
              height: 80,
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300], // Background color of TextField
                  label: Text(
                    "Password",
                  ), // label text jeta TextField er upper e thakbe
                  hintText:
                      'Enter your Password', // hint text jeta TextField er vitore thakbe
                  prefixIcon: Icon(
                    Icons.password,
                  ), // TextField er vitore left side first e icon dekhabe
                  suffixIcon: IconButton(
                    icon: Icon(_secure?Icons.remove_red_eye_rounded : Icons.visibility_off_rounded),
                    onPressed: () {
                      setState(() {
                        _secure = !_secure;     // Eye icon e click korle password show/hide korbe
                      });
                    },
                  ),
                  errorText: text.isEmpty ? "Password can't be empty" : null,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ), // TextField er border ke circular korbe
                  ),
                ),
                keyboardType: TextInputType
                    .visiblePassword, // Keyboard type jeta password er jonno use kora hoy
                obscureText:
                    _secure, // Password er text gulo ke hide korbe (default * diye dekhabe)
                obscuringCharacter:
                    "#", // Password er character gulo ke # diye dekhabe
                maxLength:
                    10, // TextField er maximum length set korbe and eta nise 0/10 character input nibe

                onChanged: (value) {
                  text = value;
                },

                onSubmitted: (value) {
                  setState(() {
                    text = value;
                  });
                  print("Submitted value: $value");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
