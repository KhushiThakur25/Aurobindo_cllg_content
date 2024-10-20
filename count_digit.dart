import 'dart:io';

void main() {
  stdout.write("Enter the value of n: ");
  int n = int.parse(stdin.readLineSync()!);
  int count = 0;
  while (n > 0) {
    count++;
    n ~/= 10;
    // n = n ~/ 10;
  }
  print("value of count is: $count");
}
