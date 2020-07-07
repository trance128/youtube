// Welcome again :-)
// Complete (Free) Flutter Course 2: Dart Types, Print, String formatting, Arithmetic + Exercise

void main() {
  // code runs here
  print("hello, world!");
  
  // ints hold whole numbers
  int intNum = 1;
  // doubles hold numbers with decimal places
  double dblNum = 1.2;
  // nums hold either ints or doubles
  num numNum = 1948.23;
  // Strings are sets of characters in a list
  String firstName = "Ovid";

  // dynamic values can change type
  dynamic variable = 123;
  variable = "string";

  // the dart compiler can figure out the type without you outright
  // declaring it
  var newVar = 123;

  print(intNum);
  print(dblNum);
  print(firstName);

  // string interpolation.  This is how we 
  print("hello, ${intNum.toString()}");

  print(intNum + 5);
  print(dblNum - 123);
  print(numNum / 12);
  print(intNum * 120);

  // % -- modulo | returns the remainder after a division
  print(12 % 11);

  //  ~/ floor division | integer division.  Ignores anything after the decimal place
  // return is always an int
  print(10 ~/ 7);
}