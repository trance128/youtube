// Welcome Again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// Module 2, Lesson 4) Dart OOP:  Abstraction

import 'coffee_machine.dart';

// Abstraction -- you don't need to know what somethign is doing, especially
// how somethign is doing it to use it

void main() {
  CoffeeMachine coffeeMachine = CoffeeMachine();

  print(coffeeMachine.makeCoffee(1));

  print(coffeeMachine.makeCoffee(100));
  coffeeMachine.refillCoffeeBeans(100);
  print(coffeeMachine.makeCoffee(50));

  // you don't need to know how something was made to know how to use it
}

// 4 pillars of OOP
// Encapsaultion
// Inheritance 
// Polymorphism 
// Abstraction
