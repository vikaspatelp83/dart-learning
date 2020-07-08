// conditional expression
void main() {
// 1. condition ? expr1 : expr2;
// returns expr1 if condition is true else returns expr2
  int a = 12, b = 45;
  print("Small Number = ${(a < b) ? a : b}");

// 2. expr1 ?? expr2
// if expr1 is not-null, returns its value; otherwise,
// evalutes and returns the value of expr2
  int x, y = 345; // x = null;
  print("Value = ${x ?? y}");
}
