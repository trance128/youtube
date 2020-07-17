// Welcome again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// Module 2, Lesson 2) Dart OOP:  Inheritance | Extends vs Implements vs With

class Person {
  void sayHello() {
    print("Hello everyone!");
  }

  void eat() {
    print("I'll order some fish and chips");
  }
}

// extends takes all of the functions, variables from the parent class
// and gives them to our child class
// we can only extend 1 class, no more
// but we can use with for as many classes as we want
// extends -- father direct inheritance
class Student extends Person with Driver {
  // can add more functions to this class and reuse the previous 
  void study() {
    print("I gotta get that a+");
  }

  @override 
  void eat() {
    print("Ramen noodles again");
  }
}

// implements takes all of the functions and variables from Person, but I need 
// to redefine them
// implements lets us implement multiple classes
// implements -- uncle.  you can have many uncles
class Rebel implements Person, Driver {
  void sayHello() {
    print("Why are you talking to me");
  }

  void eat() {
    print("Coffee and cigarettes");
  }

  @override
  void drive() {
    print("Vrooom vroom kreeeee");
  }
}

mixin Driver {
  void drive() {
    print("Driving nice and safe");
  }
}

void separator () {
  print("------------");
}

void main() {
  Person person = Person();
  Student student = Student();
  Rebel rebel = Rebel();

  person.sayHello();
  person.eat();

  separator();

  student.sayHello();
  student.eat();
  student.study();
  student.drive();

  separator();

  rebel.sayHello();
  rebel.eat();
  rebel.drive();
}