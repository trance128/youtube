// Welcome Again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// 1.8:  Ternary Operator, Arrow Functions, Assert, Lists

void main() {
  // Basic function.  There's nothing wrong with it, but it can be written
  // in a more concise way
  String isNumberEven(int i) {
    if (i % 2 == 0) {
      return "Number is even";
    } else {
      return "Number is odd";
    }
  }

  // ternary operator --- short hand for if / else 
  String isNumberEvenTernary(int i) {
    // condition ? what to do is true : what to do if false
    return i % 2 == 0 ? "Number is even" : "Number is odd";
  }

  // arrow function allows us to skip {} and the return keyword.
  // it automatically returns whatever comes right after =>
  String isNumberEvenArrow(int i) => i % 2 == 0 ? "Number is even" : "Number is odd";

  // assert keyword
  // if everything is fine, we'll see no output
  // if our assertion fails (if the condition is false) it will throw an AssertionError
  // we can use it to test our functions against each other quickly
  for (int i = 0; i < 10000000; i++) {
    assert(isNumberEvenArrow(i) == isNumberEvenTernary(i));
    assert(isNumberEvenTernary(i) == isNumberEven(i));
  }

  // list in dart an array 
  // it puts a collection of objects 
  // List of ints
  List<int> newList = [];

  for (int i = 0; i < 123; i+=3) {
    // add new items to the end of a list using the add keyword
    newList.add(i);
  }

  // if we don't specify type, lists are by default dynamic
  List dynamicList = [];

  for (int i = 0; i < 1233; i += 5 ) {
    // we can add any type to a dynamicList.  However, your programs will be more performant
    // if you specify the type of a list
    i % 2 == 0 ? dynamicList.add("i is even") : dynamicList.add(i);
  }

  print(dynamicList);
}