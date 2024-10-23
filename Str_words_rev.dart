import 'dart:io';

void main() {
  print("Enter the string..");
  String st = stdin.readLineSync()!;
  List<String> li = st.split(" ");
  String s = li.reversed.join(' ');
  print(s);
}
