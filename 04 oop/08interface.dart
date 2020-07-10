// in DART we don't have interface (dedicated as in JAVA)
// but we can use a class as an interface
// but implements instead of extends keyword
//

class Remote {
  // this class will become interface for other class
  void volumeUp() => print("Volume Up from Remote");
  void volumeDown() => print("Volume Down from Remote");
}

// inheritance
class Television extends Remote {
  // now we can access all the methods and attributes of the Remote class
  // we can override the methods of Remote class but that's not mandatory
  // it doesn't act like interface
  void volumeUp() => print("Volume Up from TV");
  void volumeDown() => print("Volume Down from TV");
}

// interface
class TelevisionI implements Remote {
  // now we can access all the methods and attributes of the Remote class
  // overriding the methods of Remote class is mandatory
  // it is interface

  // super.volumeUp(); // Throws an EXCEPTION
  // we can't do that here because we can't access super
  // implementation of a method of an interface
  void volumeUp() => print("Volume Up from interfaced TV");
  void volumeDown() => print("Volume Down from interfaced TV");
}

class SmartTV {
  void wifi() => print("Qualcomm Wifi");
}

class MySmartTV implements Remote, SmartTV {
  // now we can access all the methods and attributes of the Remote class
  // overriding the methods of Remote class is mandatory
  // it is interface
  // we can implement more than one interfaces
  void volumeUp() => print("Volume Up from interfaced smart TV");
  void volumeDown() => print("Volume Down from interfaced smart TV");
  void wifi() => print("Realtek wifi");
}

void main(List<String> args) {
  var tv = TelevisionI();
  tv.volumeUp();

  var mt = MySmartTV();
  mt.wifi();
  mt.volumeUp();
  mt.volumeDown();
}

/* ***NOTES***
-> Dart does not have any special syntax to declare INTERFACE
-> An interface in dart is a normal class
-> An interface is used when we need concrete implementation
   of all of its functions within it's sub class
   * It is mandatory to override all the methods in the 
     implementing class
-> You can implement multiple classes but 
   * You can not extend multiple classes
*/
