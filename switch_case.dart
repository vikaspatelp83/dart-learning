import 'dart:io';

void main() {
  var choice;
  print("Enter your choice : ");
  print("1 . Add\n2 . Minus\n3 . Multiply\n4 . Divide");
  choice = stdin.readLineSync();
  print("Enter number1 : ");
  int num1 = int.parse(stdin.readLineSync());
  print("Enter number2 : ");
  int num2 = int.parse(stdin.readLineSync());

  switch (choice) {
    case '1':
      print("${num1 + num2}");
      break;
    case '2':
      print("${num1 - num2}");
      break;
    case '3':
      print("${num1 * num2}");
      break;
    case '4':
      print("${num1 / num2}");
      break;
    default:
      print("Invalid option.");
  }
}
