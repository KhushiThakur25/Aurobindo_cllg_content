int add() {
  // print("Addition is :${a + b}");
  int a = 5;
  int b = 2;
  int s = a + b;
  return s;
}

void subtract(int x, int y) {
  // print("Subtraction is :${x - y}");
  int s = x - y;
  print("Subtract is $s");
}

void main() {
  int a = add();
  print("your addition is : $a");
  subtract(56, 32);
}
