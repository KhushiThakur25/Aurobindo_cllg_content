import 'dart:io';

void main() {
  print("Enter the number for printing table..");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$n * $i = ${n * i}");
  }
}
//  * * * * *
//  * * * * *
//  * * * * *
//  * * * * *
//  * * * * *