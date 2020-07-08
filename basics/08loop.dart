/*

// for
  for(var counter = initial_value; condition; increment/decrement){
    // statemants
  }
// while 
  while(condition){
    // statements
  }
// do..while 
  do{
    // statements
  }while(condition);

 */

void main() {
  // for
  // print even nums
  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) print(i);
  }
  // for ..in loop
  List names = ["Dave", "Andy", "Vikas", "Mark"];
  for (var name in names) {
    print(name);
  }

  // while loop
  var k = 0;
  while (k < 10) {
    print(k);
    k++;
  }

  // do ..while loop
  int x = 0;
  do {
    print(x);
    x++;
  } while (x < 10);
  for (; x < 20; x++) {
    print(x);
  }
  
}
