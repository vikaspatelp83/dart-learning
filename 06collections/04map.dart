/*
  MAP:
  -> It is an unordered collection of key-value pair
  -> Key-value can be of any object type
    * Each KEY in a Map should be unique
    * The VALUE can be repeated
  -> Commonly called as hash or dictionary
  -> Size of map is not fixed, it can increase or decrease 
     as per the number of elements
  
  HASHMAP:
  -> Implementation of Map
  -> Based on hash-table

*/

void main() {
  // create Map with literals
  Map<String, int> countryCodes = {"USA": 1, "INDIA": 91, "PAKISTAN": 92};

  print(countryCodes);

  Map<int, String> users = Map();
  users[1] = "Vikas";
  users[2] = "Dave";
  users[3] = "Andy";

  print(users);
  print(users.values); // values
  print(users.keys); // keys

  print("\n");
  for (String val in users.values) {
    print(val);
  }
  print("\n");

  for (int key in users.keys) {
    print(key);
  }
  print("\n");

  users.forEach((key, value) => print("KEY = $key, VALUE = $value"));

  // some methods
  print(users.containsValue("ANDY"));
  print(users.containsKey(3));

  print(users.isEmpty);
  users.remove(2); // remove value with key = 2
}
