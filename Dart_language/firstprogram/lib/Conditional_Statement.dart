import 'dart:io';

void main() {
  stdout.write("Enter a choice :");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      stdout.write("Enter a first number :");
      int num1 = int.parse(stdin.readLineSync()!);

      stdout.write("Enter a Second number :");
      int num2 = int.parse(stdin.readLineSync()!);

      int sum = num1 + num2;
      stdout.write("The sum of $num1 and $num2 is : $sum");
      break;
    case 2:
      stdout.write("Enter a first number :");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter a Second number :");
      int num2 = int.parse(stdin.readLineSync()!);
      int sub = num1 - num2;
      stdout.write("The Subtraction of $num1 and $num2 is : $sub");
      break;
    case 3:
      stdout.write("Enter a first number :");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter a Second number :");
      int num2 = int.parse(stdin.readLineSync()!);
      int mul = num1 * num2;
      stdout.write("The Multiplication of $num1 and $num2 is : $mul");
      break;
    case 4:
      stdout.write("Enter a first number :");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter a Second number :");
      int num2 = int.parse(stdin.readLineSync()!);
      if (num2 != 0) {
        double div = num1/ num2;
        stdout.write("The Division of $num1 and $num2 is : $div");
      } else {
        stdout.write("Error: Division by zero is not allowed.");
      }
      break;
    default:
      stdout.write("Invalid choice! Please select a valid option.");
  }
}




/*

...................Dart Conditional Statement.............


Conditional statements are used to perform different actions based on different conditions.

1. if statement
2. if-else statement
3. if-else-if ladder
4. switch statement

For example:
      
      int num = 10;

      if (num > 0) {
        print("$num is a positive number");
      } else if (num < 0) {
        print("$num is a negative number");
      } else {
        print("$num is zero");
      }

      switch (num) {
        case 0:
          print("Number is zero");
          break;
        case 1:
          print("Number is one");
          break;
        case 2:
          print("Number is two");
          break;
        default:
          print("Number is neither zero, one nor two");
      }


      

// Switch case mane hosse je ekta variable er value onujayi bibhinno case gulo check kora hoye thake. Jodi kono case er value variable er value er shathe mile, tahole oi case er code block execute hoye thake. Jodi kono case match na kore, tahole default case er code block execute hoye thake (jodi default case thake).



if else conditional statement is the similar of switch case statement.

when we have 5-6 conditions then we can use if else 
and when we have more than 6 conditions then we use switch case statement.








 */


