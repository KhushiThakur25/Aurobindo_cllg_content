import 'dart:io';

void main() {
  stdout.write("Enter the value for n: ");
  int n = int.parse(stdin.readLineSync()!);
  int rev = 0;
  while (n > 0) {
    // rem = n % 10;
    rev = rev * 10 + n % 10;
    n ~/= 10;
  }
  print("Reverse of number is : $rev");
}
