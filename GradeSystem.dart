import 'dart:io';

void main() {
  print("Enter the marks of:");
  print("Physics:");
  int ph = int.parse(stdin.readLineSync()!);
  print("Chemistry:");
  int ch = int.parse(stdin.readLineSync()!);
  print("Maths:");
  int ma = int.parse(stdin.readLineSync()!);
  print("Biology:");
  int bi = int.parse(stdin.readLineSync()!);
  print("Computer:");
  int co = int.parse(stdin.readLineSync()!);
  var total = ph + ch + ma + bi + co;
  var percentage = total * 0.2;
  if (percentage >= 90) {
    print("Your grade is A");
  } else if (percentage >= 80) {
    print("Your grade is B");
  } else if (percentage >= 70) {
    print("Your grade is C");
  } else if (percentage >= 60) {
    print("Your grade is D");
  } else {
    print("Your grade E");
  }
}
