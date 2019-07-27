import 'dart:io';

void main() {
  print("Enter two numbers : ");
  int a = int.parse(stdin.readLineSync());
  int b = int.parse(stdin.readLineSync());
  print("addition is = " + add(a, b).toString());
  print("subtraction is = " + minus(a, b).toString());
}

int add(int x, int y) {
  while (y != 0) {
    x++;
    y--;
  }
  return x;
}

int minus(int x, int y) {
  while (y != 0) {
    x--;
    y--;
  }
  return x;
}
