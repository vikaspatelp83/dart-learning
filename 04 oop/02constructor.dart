class Student {
  int id;
  String name;
  // in the class we cannot have both default and
  // parameterised constructors at the same time

  // default constructor
  // Student() {
  //   this.id = 0;
  //   this.name = "";
  //   print("Default constructor");
  // }
  // parameterised constructor
  // Student(int id, String name) {
  // or
  Student(this.id, this.name) {
    print("Parameterised constructor ${this.id} ${this.name}");
  }
  void study() {
    print("ID = ${this.id}\nNAME = ${this.name}");
  }

  // named constructor
  Student.CustomConstructor(this.id, this.name) {
    print("custom constructor ${this.id} ${this.name}");
  }

  // named constructor
  // will simplly set the passed values to the instance variables
  Student.CustomNamedConstructor(this.id, this.name);
}

void main() {
  var s = Student(123, "Vikas");
  var s1 = Student(111, "Dave");
  s.study();
  s1.study();
  var s2 = Student.CustomConstructor(1234, "Andy");
  var s3 = Student.CustomNamedConstructor(32, "ANDY");
  s3.study();
}
