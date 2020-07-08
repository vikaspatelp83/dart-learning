class Developer {
  int id;
  String name;
  void develop() {
    print("Developer in action");
  }
}

void main() {
  var dev = new Developer();
  // var dev = Developer();
  dev.develop();
}
