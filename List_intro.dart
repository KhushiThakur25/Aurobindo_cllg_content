void main() {
  List<int> nums = [1, 23, 45, 64, 5];
  print("$nums");

  List<int> li = List.filled(10, 0);
  print("$li");
  print(li[2]);
  li[2] = 56;
  print(li[2]);
}
