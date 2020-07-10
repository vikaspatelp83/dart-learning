/*
  CLOSURE:
  -> a closure is a special function
  -> within a closure we can mutate (modify) the value of 
    variables present in parent scope
  -> In JAVA 8, we are not allowed to modify parent scope variables
  -> But, in modern languages like Kotlin and Dart we can do that

 ** Definitions **
 # 1
 -> A closure is a function that has access to the parent scope, even
    after the scope has closed.

 # 2
 -> A closure is a function object that has access to the variables in 
    its lexical (parent) scope even when the function is used outside of its
    original scope

 */

void main() {
  // for definition 1
  String msg = "Dart is good";

  Function showMsg = () {
    msg = "Dart is Awesome"; // access parent scope variable
    print(msg);
  };
  showMsg();

  // for definition 2

  Function talk = () {
    String msg = "hi";
    print(msg + "1");
    Function say = () {
      msg = "Hello";
      print(msg);
    };
    print(msg + "2");
    return say;
  };

  var speak = talk();
  speak(); // talk() -> say() -> print(msg) -> "Hello"
}
