int doubleIt(int x, {int y = 10}) {
  return x * 2 + y;
}

void main() {
  for (int i = 1; i <= 10; i++) {
    // print(doubleIt(i, y: 30));
    print(doubleIt(i));
  }
}
