// default getter and setter

class Student {
  // the instance variable acts as the default
  // getter and setter
  String name;

  int _id; // private instance variable for its own library
  // custom getter and setter
  // instance variable with custom getter and setter
  // setter
  // void set id(int i) {
  //   _id = i;
  // }

  // // getter
  // int get id {
  //   return _id;
  // }

  // with fat arrow
  // setter
  void set id(int i) => _id = i;
  // getter
  int get id => _id;
}

void main() {
  var s = Student();
  s.name = "Vikas"; // setter
  print(s.name); // getters
  s.id = 111; // calling custom setter
  print(s.id); // calling custom getter
}
