void main() {
  List<int> li = [23, 115, 45, 15, 63, 52];
  int max = 0;
  for (int i = 0; i < li.length; i++) {
    if (li[i] > max) {
      max = li[i];
    }
  }
  print("Greatest value is $max");
}
