import 'dart:io';

void main() {
  print("Enter the values of rows..");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    for (int j = 1; j <= n; j++) {
      stdout.write(" $j");
    }
    print('');
  }
}
