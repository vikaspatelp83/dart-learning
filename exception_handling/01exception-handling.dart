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

  // CASE1: Handle with "on"
  // use on when we know the exception
  try {
    int answer = 12 ~/ 0;
    print("Division = $answer");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  }

  // CASE2: Handle with "catch"
  // use catch(e) when we don't know the exception
  try {
    int answer = 12 ~/ 0;
    print("Division = $answer");
  } catch (e) {
    print("The exception : $e");
  }

  // CASE3: using STACK TRACE to know the events occured
  // before exception was thrown
  try {
    int answer = 12 ~/ 0;
    print("Division = $answer");
  } catch (e, stackTraceObject) {
    print("The exception : $e");
    print("Stack Trace:\n$stackTraceObject");
  }

  // CASE4: finally clause
  try {
    int answer = 12 ~/ 0;
    print("Division = $answer");
  } catch (e, stackTraceObject) {
    print("The exception : $e");
    print("Stack Trace:\n$stackTraceObject");
  } finally {
    print("This will always execute");
  }

  // CASE4: finally clause
  try {
    int answer = 12 ~/ 4;
    print("Division = $answer");
  } catch (e, stackTraceObject) {
    print("The exception : $e");
    print("Stack Trace:\n$stackTraceObject");
  } finally {
    print("This will always execute");
  }
}
