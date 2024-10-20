import 'dart:io';

void main() {
  print("Enter the start value:");
  int? n = int.parse(stdin.readLineSync()!);
  bool prime = true;
  for (int i = 2; i < n / 2; i++) {
    if (n % i == 0) {
      print("Number is not prime");
      prime = false;
      break;
    }
  }
  if (prime) {
    print("Number is prime.");
  }
}

