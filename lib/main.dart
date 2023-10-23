/*
PROGRAM: SIMPLE CALCULATOR
Author: Matthew Miracle Chinedum
Algorithm:
1. Welcome User
2. Get user name and Email
3. Greet User(hello)/information  about the App
4. choose Option
5. Get users Operands
6. Calculate
7. Display Result
8. Goodbye and Stop
 */

import 'dart:io';

void main() {
  print('***************************************************************');
  print('********SIMPLE CALCULATOR APP - Matthew Miracle Chinedum********');
  print('***************************************************************\n');

  userDetails();
  print('');
  choosingOption();
}

userDetails() {
  print('PLease Enter Your Name: ');
  var userName = stdin.readLineSync();
  print('');

  print('PLease Enter Your Email: ');
  var userEmail = stdin.readLineSync();
  print('');

  print(
      'Hello $userName, This program performs simple calculations such as Addition, Subtraction, Multiplications and Division');
}

choosingOption() {
  print('SIMPLE CALCULATOR');
  print('Input A for Addition');
  print('Input B for Subtraction');
  print('Input C for Multiplication');
  print('Input D for Division');
  print(
      'Input E if you want to Exit\n (please note: Your input should be in capital letters)');

  var option = stdin.readLineSync();

  if (option == 'A') {
    addition();
  } else if (option == 'B') {
    subtraction();
  } else if (option == 'C') {
    multiplication();
  } else if (option == 'D') {
    division();
  } else if (option == 'E') {
    print('Thank You For time. Have a nice day');
  } else {
    print('Oops! invalid input. Please input the right value');
    choosingOption();
  }
}

addition() {
  print('');
  print('ADDITION');
  print('Enter your left operand');
  var operand1 = int.parse(stdin.readLineSync()!);
  print('Enter your Right operand');
  var operand2 = int.parse(stdin.readLineSync()!);
  var result = operand1 + operand2;
  print('The result of the Addition of $operand1 and $operand2 is: $result');

  continueOp();
}

subtraction() {
  print('');
  print('SUBTRACTION');
  print('Enter your left operand');
  var operand1 = int.parse(stdin.readLineSync()!);
  print('Enter your Right operand');
  var operand2 = int.parse(stdin.readLineSync()!);
  var result = operand1 - operand2;
  print(
      'The result of the Subtraction of $operand2 from $operand1 is: $result');

  continueOp();
}

multiplication() {
  print('');
  print('MULTIPLICATION');
  print('Enter your left operand');
  var operand1 = int.parse(stdin.readLineSync()!);
  print('Enter your Right operand');
  var operand2 = int.parse(stdin.readLineSync()!);
  var result = operand1 * operand2;
  print('The result of Multipyling $operand1 and $operand2 is: $result');

  continueOp();
}

division() {
  print('');
  print('DIVISION');
  print('Enter your left operand');
  var operand1 = int.parse(stdin.readLineSync()!);
  print('Enter your Right operand');
  var operand2 = int.parse(stdin.readLineSync()!);
  var result = operand1 / operand2;
  print('The result of the Division of $operand1 by $operand2 is: $result');

  continueOp();
}

continueOp() {
  print('Please do you wish to continue (yes/no)');
  var option = stdin.readLineSync();

  if (option == 'yes') {
    choosingOption();
  } else if (option == 'no') {
    print('Thank you . Have a nice day');
  } else {
    print('Oops! wrong input. Please input the right option');
    continueOp();
  }
}
