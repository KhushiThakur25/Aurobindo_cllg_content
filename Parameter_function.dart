int add(int a, int b) {
  // print("Addition is :${a + b}");
  int s = a + b;
  return s;
}

int subtract(int x, int y) {
  // print("Subtraction is :${x - y}");
  int s = x - y;
  return s;
}

void main() {
  int a = add(12, 3);
  print("your addition is : $a");
  int b = subtract(56, 32);
  print("Your subtraction is: $b");
}
