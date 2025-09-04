import 'dart:io';

void main() {
  // int num1 = 5, num2 = 10;
  stdout.write("Enter first number : ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number : ");
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;
  stdout.write("The sum is : $sum");
}
