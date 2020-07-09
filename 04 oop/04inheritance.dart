// Inheritance in Dart
/* in dart there are :
  ->  Single Inheritance
  ->  Multilevel Inheritance
  ->  Heirarchical Inheritance
[] Dart does not support Multiple Inheritance 

********************
// Syntax 
class ChildClass extends ParentClass{
  // child class body
}

**********************
Super class of any class is Object:
  * Provides default implementation of:
    => toString() : returns the String representation of the object
    => hashCode() : Getter, returns the Hash Code of an ovject
    => operator == : to compare two objects

*/

void main() {
  var d = Dog();
  d.breed = "Labrador";
  d.color = "Black";
  d.myDog();
  d.bark();
  d.eat();

  var c = Cat();
  c.age = 3;
  c.color = "White";
  c.myCat();
  c.meow();
  c.eat();
}

// implementing Inheritance

class Animal {
  String color;
  void eat() => print("Eating");
}

class Dog extends Animal {
  String breed;
  void myDog() => print("Dog \nBreed = $breed\nColor = $color");
  void bark() => print("Barking");
}

class Cat extends Animal {
  int age;
  void meow() => print("Meow");
  void myCat() => print("Cat \nAge = $age\nColor = $color");
}
