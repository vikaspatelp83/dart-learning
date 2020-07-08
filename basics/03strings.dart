void main() {
  // literals
  "Dan"; // string literal
  23; // int literal
  45.6; // double literal
  true; // bool literal

  // ways to define string
  String s1 = 'Vikas'; // with single quote
  String s2 = "Dave"; // with double quote
  String s3 = "It's Easy"; // can use both
  String s4 = 'It\'s Easy'; // excape sequence
  String s5 = 'This is a very very long string '
      'and exceeding the line.'; // long string
  // auto concatenation of strings

  // String interpolation
  String name = "Vikas";
  String msg = name + " We are heading to the west";
  // interpolation
  String msg2 = "$name We are heading to the west";
  String msglen = "Length of msg = ${msg2.length}";
  print(msg2);
  print(msglen);

  int BoxLength = 123;
  double BoxWeight = 4522.4545;
  print("Length of box = $BoxLength \nWeight of Box = $BoxWeight");
}
