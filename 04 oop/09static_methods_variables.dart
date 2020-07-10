/*
  * static members are same for all the instances of the class
  * they are instanciated only once
  * they consume memory only once unlike insatace members consume memory
    whenever an instance is created
  * they can save lots of memory
  * ve cannot access a static member using an object
  * to use a static member we use className.memberName;
  * to access the static member inside an instance member we use the same className.memberName;
  * but we cannot access access inatance member inside static member
  * we can access only static member inside static member
*/
class Robot {
  static int id = 123;
  static const int rules = 3;

  static void idea() => print("Will make people's life easy.");
  static anotherStaticMember() {
    // name(); // we can't do that
    // this.name(); // we can't do that either
  }

  void name() {
    Robot.idea(); // access static member instde instance member
    // here we can omit the class name

    print("R2D2");
  }
}

void main() {
  var r = Robot();
  // r.rules; // NOT OK
  print(Robot.id); // OK
  print(Robot.rules); // OK

  Robot.id = 432; // we can reassign the static variables

  // but if we create const member then we cannot do that
  // Robot.rules = 4; // NOT OK

  // but we cannot redefine the static methods

  print(Robot.id); // OK
  print(Robot.rules); // OK

  r.name(); // OK
  // Robot.name(); // NOT OK

  // r.idea(); // NOT OK
  Robot.idea(); // OK

  // Robot.anotherStaticMember();
}

/* *** NOTES *** 

STATIC KEYWORD: 
-> Static variables are also known as  Class Variables
-> Static methods are also known as  Class Methods
-> Static variables are lazily initialized :
  * i.e. they are not initialized until they are used in program
  * So they consume memory only when they are used
-> Static methods has nothing to do with class object or instance
  * You cannot use 'this' keyword within a Static Method
-> From a Static Method 
  * You can ONLY access Static Method and Static Variables 
  * But you cannot access instance members

*/
