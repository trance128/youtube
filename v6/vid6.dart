// Welcome again to The Complete (FREE) Flutter Course
// Lesson 6) Boolean Algebra, Operators, Loops

import '../v7/challenge1_solution.dart';

void main() {
  // true, false

  bool t = true;
  bool f = false;

  // && and -- returns true if BOTH are true
  if (t && t) {
    print('both values are true');
  }

  // || or -- returns true if EITHER are true
  if (t || f) {
    print('at least one value is true');
  }

  // - ! not -- returns the OPPOSITE of the value given
  if (!f) {
    print("Not true");
  }

  // we can combine things
  if ((t && f) || (!t || f)) {
    print('pause the video and figure out if this statement prints');
  }

  // while do-while for <--- most useful

  //! Code commented out because it will break your terminal
  // while loops do something until the evaluation is false
  // break out of a program with ctrl + c
  // while (true) {
  //   print("hello, world");
  // }

  int bigNumber = 123;
  while (bigNumber > 10) {
    print('${bigNumber % 10}');
    bigNumber = bigNumber ~/ 10;
  }
  // ends with bigNumber = 1;

  // does it at least once, 
  print('-----------------');
  do {
    print('${bigNumber % 10}');
    bigNumber = bigNumber ~/ 10;
  } while (bigNumber > 10);


  int smallNumber = 5;
  // declare a var; comparison; make changes to vars
  // ALWAYS START COUNTING AT 0, NOT 1.
  for (int i = 0; i < smallNumber; i++) {
    print(i);
  }

  // for var i in iterable
  String str = "hey what's up people, how's life recently";
  String tempString = '';
  for (String c in str.split('')) {
    tempString += c * 2;
  }
  print(str);
  print(tempString);

  // one more things for challenge...
  // /n -- new line
  // String str = '\n';

  // we can combine named + positional args
  // function prototype:
  // String buildPyramid(String char, int height, {bool twoSides});

  //! These will only run if you have the challenge completed and imported
  // print(buildPyramid('#', 10));
  // print(buildPyramid('#', 10, twoSides: true));
  // print(buildPyramid('/', 50, twoSides: true));
  // print(buildPyramid('#', 51));
  // print(buildPyramid('Ovidius', 20, twoSides: true));

  // print(buildPyramidLongCharBroken('Ovidius', 25, twoSides: true));
  // print(buildPyramidLongCharFixed('Ovidius', 10, twoSides: true,));
}