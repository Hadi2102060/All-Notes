
// Separate screen for Column
import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 151, 232),
      appBar: AppBar(
        title: Text('Column Demo'),
        backgroundColor: Color(0xFF1D1E33),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.star, color: Colors.white, size: 40),
                      SizedBox(height: 8),
                      Icon(Icons.favorite, color: Colors.white, size: 40),
                      SizedBox(height: 8),
                      Icon(Icons.thumb_up, color: Colors.white, size: 40),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Column arranges children vertically.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
