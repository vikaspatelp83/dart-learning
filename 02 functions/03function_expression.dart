String sayHello(String name) {
  return "Hello, " + name;
}

// FAT ARROW
String sayHello2(String name) => "Hello, " + name;

void main() {
  print(sayHello("Vikas"));
  print(sayHello2("Dave"));
}
