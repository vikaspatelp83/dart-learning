// we cannot create the object of abstract class

void main() {
  var r = Rectangle();
  r.draw();
  r.paint();
}

// abstract class
abstract class Shape {
  void draw(); // abstract method
}

class Rectangle extends Shape {
  void paint() => print("Painting...");

  // we have to override the methods in Shape
  @override
  void draw() => print("Drawing..");
}

/*** Notes ***
Abstract Method:
  * To make a method abstract, use (;) instead of method body.
  * Abstract method can only exist in Abstract class.
  * You need to override Abstract methods in child-class.

Abstract Class:
  * Use abstract keyword to declare Abstract class.
  *  Abstract class can have Abstract Methods, Normal Methods and Instance Variables as well.
  * The Abstract Class cannot be instantiated, you cannot create objects.

*/

