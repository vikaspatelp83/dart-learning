// lambdas
// A function without a name
// Also known as anonymous function or lambda
// NOTE: A function in Dart is an object

// Normal function
void add(int a, int b) {
  print("Normal function : ${a + b}");
}

void main(List<String> args) {
  add(1, 2); // Normal function call

  // Lambda function
  // can assign to a variable
  var addL = (int a, int b) {
    print("Lambda function : ${a + b}");
  }; // the semicolon is must
  addL(3, 4);

  // or keep it anonymous
  print(() {
    return "Anonymous Lambda function";
  }()); // first () is for parameters, second () is for call

  // or call it anonymously
  (String name) {
    print("Anonymous Lambda function call : $name");
  }("Vikas"); // first () is for parameters, second () is for call

  // or use fat arrow =>
  // or call it anonymously
  var say = (String name) => print("With Fat Arrow : $name");
  say("Vikas");
}
