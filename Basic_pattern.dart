import 'dart:io';

void main() {
  // outer loop always used for rows..
  // inner loop always used for printing..
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("($i , $j) ");
    }
    print("");
  }
}
