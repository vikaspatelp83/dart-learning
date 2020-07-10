/* 
Higher Order Function is a function which can: 
  -> Accept function as a parameter
  -> return a function
  -> do both 

  // it accepts a lambda as a function parameter
 */

//  example
// passing Function as parameter
void aHigherOrderFunction(int a, Function anotherFunction) {
  print("Inside Higher Order Function");
  anotherFunction(a);
}

// return Function
Function returnSomeFunction() {
  return (String name) =>
      print("returned from higher order function \nHello, $name");
}

// do both at once
Function returnSameFunction(int age, Function aFunctionAsParameter) {
  aFunctionAsParameter(age);
  return () => print("Returned from a function and passed as parameter");
}

void main() {
  var aFunction =
      (int a) => print("A function inside higher order function:$a ");

  var ageCalc = (int a) => print("\nAge = $a");
  // pass a function
  aHigherOrderFunction(5, aFunction);

  // returned function
  var sayHello = returnSomeFunction();
  sayHello("Vikas");

  // pass and return the function
  var dummy = returnSameFunction(20, ageCalc);
  dummy();
}
