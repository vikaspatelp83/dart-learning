import "dart:io";

void main() {
  // String
  print("Name? ");
  String name = stdin.readLineSync();
  // print("Hello, $name");

  // int
  print("Age? ");
  int age = int.parse(stdin.readLineSync());

  // double
  print("Rating Percentage? ");
  double perc = double.parse(stdin.readLineSync());

  // bool
  print("Married?(true/false) ");
  bool md = bool.fromEnvironment(stdin.readLineSync());

  print("Name: $name\nAge : $age\nPercentage : $perc\nMarried : $md");

  if (md) {
    print(!md);
  }
}
