/* in Dart, Array is known as List
  ->  List is ordered collection 
      * Elements are ordered in insertion sequence

  Types :
    * Fixed 
    * Growable
*/

// fixed list
// the elements are initialized with 'null'
void main() {
  // var l = List(5); // this
  // or
  List<int> list = List(5); // this
  list[0] = 100;
  list[1] = 12;
  list[2] = 54;
  list[4] = 34;
  list[3] = 89;

  list[1] = 78; // update value
  list[2] = null; // delete value

  print(list[0]); // print value
  print("\n");
  for (var i in list) {
    print(i);
  }
  print("\n");

  list.forEach((element) => print(element));
  print("\n");

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}
