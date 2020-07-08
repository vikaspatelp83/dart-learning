/* create constants using 
  -> final
  -> const 

final vs const:
  * final variable  can only be set once and 
  it is initialized when accessed
  * const is internally in nature but it is a 
  compile-time constant 
    -> i.e. it is initialized during compilation

instance variable can be final but cannot be constant
  * if you want a Constant class level then make it 
  static const

*/
void main() {
  // final
  final city = "Toronto";
  // or
  // final String city = "Toronto";
  // city = "NY"; // Error: Can't assign to the final variable 'city'.

  const PI = 3.1415;
  const double gravity = 9.8;
}

class Circle {
  final color = "RED";

  // const PI = 3.1415;
/*
Only static fields can be declared as const.
Try declaring the field as final, or adding the keyword 'static'. */

  static const PI = 3.1415;
}
