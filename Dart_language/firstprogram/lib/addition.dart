import 'dart:io';

void main() {
  // int num1 = 5, num2 = 10;
  stdout.write(
    "Enter first number : ",
  ); // stdout.write is used to print in some line with new line but printf() use in only print the line without new line

  int num1 = int.parse(stdin.readLineSync()!);
  // stdin.readLineSync() is used to take input from user that by default get stiring value
  // int.parse() is used to convert string to integer

  stdout.write("Enter second number : ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third number : ");
  double num3 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the fourth number : ");
  String value = stdin.readLineSync()!;

  int sum = num1 + num2;
  stdout.write("The sum is : $sum\n");
  stdout.write(num3);
  stdout.write(value);
}
