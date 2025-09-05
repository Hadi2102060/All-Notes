/*
.....................Dart Boolean  datatype......................


/// Boolean datatype is used to represent two values: true and false. 

/// 
/// Real-life examples of Boolean Values:

    suppose ami jokhon facebook a login korte jay tokhon amader samne asher email field and password field ,
    jokhon ami thik email and password dibo tokhon amake login korte dei and homepage niye jay but jokhon 2nd time
    app ti te dhukhi tokhon ar login page dekhai nh direct homepage e niye jay ata kivabe hoy ?

Answer:::::

    ata muloto login button e akta boolean value set kora thake jeta default vabe false thake
    jokhon ami thik email and password diye login e click korbo then ei boolean value false theke true hoye jay 
    then second time ar login page niye ashe nh..















 */

import 'dart:io';

void main() {
  bool isLoggedIn = false; // Default value is false
  stdout.write("Enter email:");
  String email = stdin.readLineSync()!;

  stdout.write("Enter password:");
  String password = stdin.readLineSync()!;

  // Simulate login process
  stdout.write("Logging in...\n");
  isLoggedIn = true;
  stdout.write("Login successful!\n");
}
