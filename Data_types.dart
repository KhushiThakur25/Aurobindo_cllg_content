import 'dart:io';

void main() {
  int age = 30;
  String name = "Arun";
  print("Value of name is: $name");
  dynamic m = 10;
  m = 23.4;
  print("Value of n is: $m");
  
  int? marks;
  // marks = 65;
  print("Value of marks is: $marks");
  int sum = age + 32;
  print("The value of sum is: $sum");
  String? number = stdin.readLineSync();
  print("Value of number is: $number");
}
