/* in Dart, Array is known as List
  ->  List is ordered collection 
      * Elements are ordered in insertion sequence

  Types :
    * Fixed 
    * Growable
*/

// growable list
// the elements are initialized with 'null'
void main() {
  List<int> list = List(); // do not pass size so it becomes growable list
  //  insert
  list.add(12);
  list.add(43);
  list.add(2);
  list.add(45);

  list[1] = 78; // update value
  // list[2] = null; // delete value and set null

  // remove
  list.remove(45);

  print(list[0]); // print value
  print("\n");
  for (var i in list) {
    print(i);
  }

  // remove value at index
  list.removeAt(1);

  print("\n");
  list.forEach((element) => print(element));
  print("\n");

  // clear the list
  list.clear();

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}
