/*
 SET:
 -> Unordered collection of unique items
 -> cannot get element by using INDEX notation
 HASHSET:
 -> Implementation of unordered Set
 -> It is based on hash-table based Set implementation 
*/

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
  // create a set from a list
  List<int> lst = [1, 2, 3, 4];
  Set<int> mySet = Set.from(lst);

  // or Set<int> mst = Set();

  //  insert
  mySet.add(12);
  mySet.add(43);
  mySet.add(2);
  mySet.add(45);
  mySet.add(12);
  mySet.add(43);
  mySet.add(2);
  mySet.add(45);

  // some methods of Set class
  print(mySet.isEmpty);
  print(mySet.isNotEmpty);
  print(mySet.length);
  print(mySet.contains(12));

  // remove
  mySet.remove(45);

  print("\n");
  for (var i in mySet) {
    print(i);
  }

  print("\n");
  mySet.forEach((element) => print(element));
  print("\n");

  // clear the mySet
  mySet.clear();
}
