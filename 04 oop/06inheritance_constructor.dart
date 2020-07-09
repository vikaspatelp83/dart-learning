void main() {
  var d = Dog.namedConstructor2("Pug");
  d.eat();
}

class Animal {
  String color = "Brown";
  // Animal() {
  //   print("Animal Constructor");
  // }
  Animal(String color) {
    print("Animal Constructor");
  }

  Animal.namedAnimalConstructor() {
    print("named Animal Constructor");
  }

  void eat() => print("Animal is Eating");
}

class Dog extends Animal {
  String breed;
  String color = "Black"; // overridden;
  // Dog() {
  //   print("Dog Constructor");
  // }
  // parameterised Parent and Child constructors with parent Constructor call

  // Dog(String breed) : super("Black") {
  //   print("Dog Constructor");
  // }

  // Dog(String breed) {
  //   print("Dog Constructor");
  // }

  Dog.namedConstructor(String breed, String color) : super(color) {
    print("Named Constructor");
  }

// call parent named constructor
  Dog.namedConstructor2(String breed) : super.namedAnimalConstructor() {
    print("Named Constructor");
  }

  void bark() => print("Barking");
  // method overriding
  void eat() {
    // super.eat(); // to call the parent version of method
    print("Dog is Eating");
  }
}



/* NOTES
-> By default a constructor in a subclass calls the 
   superclass' no-argument constructor.
-> Parent class constructor is always called before 
   child class constructor.
-> If default constructor is missing in Parent class,
   then you must manually call one of the constructors
   in super class.
*/