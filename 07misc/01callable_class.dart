// to create a callable class we need to implement call() method inside our class

class Person {
  call() {
    print("Callable class");
  }
}

class Boy {
  // return value and pass parameters
  String call(String name) {
    return "Hey, " + name;
  }
}

void main() {
  Person()(); // the constructor is called using function call
  var p = Person();
  p();

  var b = Boy();
  print(b("Vikas"));
}
