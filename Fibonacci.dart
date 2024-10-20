import 'dart:io';

void main(){
  int n = 6;
  int dig1 = 0;
  int dig2 = 1;
  int third = 0;
  stdout.write("$dig1 , $dig2 ");
  for(int i = 3;i <= n;i++){
    third = dig1 + dig2;
    stdout.write(", $third ");
    dig1 = dig2;
    dig2 = third;
  }
}