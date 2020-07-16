// Welcome again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// Module 2, Lesson 1) Dart Object Oriented Programming.  Classes, Encapsulation
// Classes, Encapsulation, Inheritance, Polymorphism, Abstraction

class Student {
  // this underscore makes gpa a private variable
  // something is private if it can only be accessed inside the class
  double _gpa;
  bool _isFailing;
  String university;

  // method -- a function inside of a class
  void printUniversity() {
    print(university);
  }

  // setter -- a method which allows us to change a variable
  void setGpa(double gpa) {
    if (gpa < 0) {
      throw Exception("Gpa cannot be negative");
    }

    if (gpa < 2.0) {
      _isFailing = true;
    } else {
      _isFailing = false;
    }

    _gpa = gpa;
  }

  // getter -- to show a private variable
  double get gpa => _gpa;

  bool get isFailing => _isFailing;
}

class StudentWithConstructor {
  double gpa;
  bool isFailing;
  String university;

  // this is the usual way of constructing a new class
  StudentWithConstructor({this.gpa, this.isFailing, this.university});

  // we can also use named constructors, for example if we wanted positional args 
  StudentWithConstructor.positional(this.gpa, this.isFailing, this.university);
}

// Encapsulation -- we are sending the methods to work on some data, together with the class 
void main() {
  String str = "asd;fasf";

  // In dart, methods are encapsulated with classes: you can access
  // methods directly on the class, through dot notation (class.method)
  str.length;
  
  // this is different from something like Python, where the len
  // function is not encapsaulted so you do... 
  // len(str)
}