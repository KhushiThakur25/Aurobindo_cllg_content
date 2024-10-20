import 'dart:io';

double addition(double a, double b) {
  return a + b;
}

double subtraction(double a, double b) {
  return a - b;
}

double multiplication(double a, double b) {
  return a * b;
}

double division(double a, double b) {
  if (b == 0) {
    print("a can't be divide by 0");
    return 0;
  }
  return a / b;
}

void main() {
  stdout.write("Enter the num 1: ");
  double num_1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the num 2: ");
  double num_2 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the operator to perform (+ , - ,* , /)");
  String op = stdin.readLineSync()!;

  double result = 0;
  switch (op) {
    case '+':
      result = addition(num_1, num_2);
      break;

    case '-':
      result = subtraction(num_1, num_2);
      break;

    case '*':
      result = multiplication(num_1, num_2);
      break;

    case '/':
      result = division(num_1, num_2);
      break;

    default:
      print("Invalid operation..");
      return;
  }
  print("Your result is: $result ");
}
