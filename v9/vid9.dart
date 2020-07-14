// Welcome Again to the Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// Module 1, Lesson 9) forEach(), map(), fold(), reduce()

import '../v10/exercise3.dart';

void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6];
  // cntrl + shift + i
  List<String> daysOfTheWeeks = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  print(myList.first);
  print(myList.last);

  // forEach();
  // simplified looping over each element of a list

  // list.forEach(function);
  // function takes an input, can be called anything
  myList.forEach((n) => print(n));

  daysOfTheWeeks.forEach((day) {
    // use on strings, Lists []
    // it gives us the element at position i
    if (day[0] == "T") print(day);
  });

  // Strings and Lists are cousins
  String str = "qwertyuio";
  // split the string on the char
  // since we didn't specify any character, it'll split on every character
  print(str.split(''));

  // join will join a list of strings
  print(daysOfTheWeeks.join(' '));

  // map()
  // map is really similar to forEach
  // forEach simply loops over our list
  // map loops over, and returns a new list
  List<String> convertedInts = myList.map((n) => n.toString()).toList();
  print(convertedInts);

  int squareNum(int i) {
    return i*i;
  }
  List<int> squaredInts = myList.map(squareNum).toList();
  print(squaredInts);

  // where();
  // filter();
  // return the element if the element meets a condition
  List<int> filteredInts = squaredInts.where((n) => n > 10).toList();
  print(filteredInts);

  // reduce() fold()
  // take the list and return a single element
  // combines them through a function we give it
  // fold -- we can give it an initial value

  int sum = myList.reduce((value, n) => value ~/ n);
  print(sum);

  int foldedSum = myList.fold(10000, (value, n) => value ~/ n);
  print(foldedSum);

  // This was a real question I saw on a Flutter facebook group
  // how he can make a dropdown list showing 00:00, 00:15.. 23:45
  // going by quarter of an hour for the entire day 
  // exercise3Solution();
}
