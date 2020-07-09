// we can override methods and instance variables of the parent class

void main() {
  var d = Dog();
  d.eat();
}

class Animal {
  String color = "Brown";
  void eat() => print("Animal is Eating");
}

class Dog extends Animal {
  String breed;
  String color = "Blask"; // overridden;
  void bark() => print("Barking");
  // method overriding
  void eat() {
    super.eat(); // to call the parent version of method
    print("Dog is Eating");
  }
}
