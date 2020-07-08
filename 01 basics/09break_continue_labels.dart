void main() {
  // continue -> skip an iteraion in a loop
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      // skip when i==5
      continue;
    }
    print(i);
  }
  // break -> stop executionof loop
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      print("$i $j");
      if (i == 2 && j == 2) {
        break; // will break inner loop
      }
    }
  }
  // labels
  print("*********");
  print("i j");

  outerLoop:
  for (int i = 0; i < 5; i++) {
    // ignore: unused_label
    innerloop:
    for (int j = 0; j < 5; j++) {
      print("$i $j");
      if (i == 2 && j == 2) {
        break outerLoop; // will break outerloop
      }
    }
  }
}
