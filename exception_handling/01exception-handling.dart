void main() {
  // division
  // int result = 12 / 4;
  // A value of type 'double'
  // can't be assigned to a variable of type 'int'.
  double result = 12 / 4; //OK

  // integer division
  int result1 = 12 ~/ 5; // OK : result = 2

  // int badDivision = 12 ~/ 0; // EXCEPTION
  //IntegerDivisionByZeroException

  try {
    int badDivision = 12 ~/ 0;
    print("Divided by zero = $badDivision");
  } on IntegerDivisionByZeroException {
    // use on whwn we know the exception
    print("Cannot divide by zero");
  }
}
