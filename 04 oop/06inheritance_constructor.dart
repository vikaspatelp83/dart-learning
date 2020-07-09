void main() {
  var d = Dog("Pug");
  d.eat();
}

class Animal {
  String color = "Brown";
  Animal() {
    print("Animal Constructor");
  }
  // Animal(String color) {
  //   print("Animal Constructor");
  // }

  void eat() => print("Animal is Eating");
}

class Dog extends Animal {
  String breed;
  String color = "Blask"; // overridden;
  // Dog() {
  //   print("Dog Constructor");
  // }
  // parameterised Parent and Child constructors with parent Constructor call

  // Dog(String breed) : super("Black") {
  //   print("Dog Constructor");
  // }

  Dog(String breed) {
    print("Dog Constructor");
  }

  void bark() => print("Barking");
  // method overriding
  void eat() {
    // super.eat(); // to call the parent version of method
    print("Dog is Eating");
  }
}
