// Welcome again to The Complete (FREE) Flutter Course
// Presented by Ovidius Mazuru
// 4) Dart Functions, Optional Args, Default Params, if

import 'exercise2_finished.dart';

void main() {
  sayHello();
  sayHelloName("Ovid");
  sayHelloName("Nikita");
  // not including an arg when it's not optional
  // gives an error
  sayHelloName();

  sayHelloOptional([String name]) {
    print("hello, $name");
  }

  sayHelloOptional();
  sayHelloOptional("Ovid");

  sayHelloDefault();
  sayHelloDefault('Katya');

  printSquare();
  printSquare(5);

  print(sub(10,5));
  print(sub(5, 10));

  print(getTotalSeconds());
  print(getTotalSeconds(hours: 1));
  print(getTotalSeconds(minutes: 1));
  print(getTotalSeconds(seconds: 1));
  print(getTotalSeconds(hours: 12, minutes: 234, seconds: 123));
}

// A function is a collection of code which we can call at a later date
// functions start with a return type (or void if we don't return anything)
void sayHello() {
  print("hello, world!");
}

// We can pass in an argument (also called parameter)
// by including that variable between ()
void sayHelloName(String name) {
  print("hello, $name");
}

// putting the passed in arg between [] makes that argument 
// optional.  Additionally, we can pass in a default value by
// saying variable = "value"
void sayHelloDefault([String name = "Ovidius"]) {
  print("hello, $name");
}

// If a value is optional and no default is given, it's value
// is null.  Sometimes this doesn't matter, but sometimes it can 
// crash our programs.  Including an if statement can protect us from this
void printSquare([int x]) {
  if (x == null) {
    // do something
    print("No number given");
  } else {
    //do something else
    print('${x * x}');
  }
}

// We can return a variable by using the return keyword
int square(int x) {
  int y = x * x;
  return y;
}

// We can pass in multiple variables, and if we don't include
// {}, they are positional arguments.  In other words, the value
// of each variable is gotten from it's position
// x is first var passed in, y is second.
int sub(int x, int y) {
  return x - y;
}

// We can instead pass in named arguments.  Putting the arguments
// between {} makes them named.  To use them, we need to use name: value
// This is needed if, for example, we want to pass in name but leave out greeting
String buildGreetingFromName({String greeting, String name}) {
  String tempString = '';

  // -- ! -- not 
  // if greeting is not equal to null
  if (greeting != null) {
    tempString += greeting;
  } else {
    tempString += "Hello";
  }

  // add a space between our two vars
  tempString += ' ';

  // if name is not equal to null
  if (name != null) {
    tempString += name;
  } else {
    tempString += "world";
  }

  return tempString;
}