import 'dart:io';

void main() {
  print("Enter the string for the filtering words..");
  String? sentence = stdin.readLineSync()!;
  List<String> li = sentence.split(' ');
  print("Here, are the words those have even length..");
  for (int i = 0; i < li.length; i++) {
    if (li[i].length % 2 == 0) {
      print(li[i]);
    }
  }
}
