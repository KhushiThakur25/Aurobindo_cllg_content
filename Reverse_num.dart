import 'dart:io';

void main() {
  // Read input from the user
  stdout.write("Enter an integer: ");
  int number = int.parse(stdin.readLineSync()!);
  
  // Initialize variable to store the reversed number
  int reversedNumber = 0;
  
  // Store the sign of the number
  int sign = number < 0 ? -1 : 1;
  number = number.abs();  // Make the number positive for processing

  // Reverse the digits of the number
  while (number > 0) {
    int lastDigit = number % 10;
    reversedNumber = reversedNumber * 10 + lastDigit;
    number = number ~/ 10;
  }

  // Restore the sign of the number
  reversedNumber *= sign;

  print("Reversed number: $reversedNumber");
}
