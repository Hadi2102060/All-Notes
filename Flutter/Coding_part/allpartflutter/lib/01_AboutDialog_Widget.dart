import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AboutDialog(
              applicationName: "Flutter",
              applicationVersion: "1.0.0",
              applicationIcon: Icon(Icons.flutter_dash),
              applicationLegalese: "© 2024 Flutter. All rights reserved.",
            ),
          );
          ;
        },

        child: Text("AboutDialog widget"),
      ),
    );
  }
}
