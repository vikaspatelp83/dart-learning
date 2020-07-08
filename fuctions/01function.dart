void sayHello(String name) {
  print("Hello, $name");
}

// return type is optional;
// sayHelloRt(String name) {
String sayHelloRt(String name) {
  return "Hello, " + name;
}

void main() {
  sayHello("Andy");
  print(sayHelloRt("Dave"));
}
