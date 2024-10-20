import 'dart:io';

void main(){
  print("Enter the value of which you want to find factorial..");
  int n = int.parse(stdin.readLineSync()!);
  int fact = 1;
  for(int i = 1;i <= n;i++){
    fact = fact * i;
  }
  print("Factorial of $n is: $fact");
}