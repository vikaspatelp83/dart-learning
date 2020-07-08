/*
  // DATA TYPES
  * Numbers 
    -> int
    -> double
  * String
  * Boolean
  * List (aka Array)
  * Map
  * Rune (for expressing Unicode chars in String)
  * Symbol

*/

// create a variable
// int name = value; // exxplicit data type
// var name = value; // inplicit data type

void main() {
  // numbers: int
  int score = 90;
  int hexValue = 0xEAEAEA;

  // numbers: double
  double length = 24.6;
  double exponentValue = 1.4e5;

  // String
  String name = "Dave";

  // boolean
  bool going = false;

  // use var
  var name2 = "Vikas";
  var age = 20;
  var score2 = 45.6;
  var isHere = true;
  var exp = 2.5e6;
  var hex2 = 0xEC43AB;
  var data;

  print(score);
  print(hexValue);
  print(length);
  print(exponentValue);
  print(going);
  print(name2);
  print(age);
  print(score2);
  print(isHere);
  print(exp);
  print(hex2);

// in DART all the data types are objects and their initial value is "null"

  print(data);
}
