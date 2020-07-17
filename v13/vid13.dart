// Welcome Again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// Module 2, Lesson 3) Dart OOP: Polymorphism, abstract, super keywords

// Subtyping -- allows us to use a class as it's parents type

import 'dart:math' as math;

// blueprint
abstract class Shape {
  double getArea();
}

// Rectangle must use implements (not extends) to force
// programmer to overrride Shape's methods
class Rectangle implements Shape {
  double width;
  double height;

  Rectangle({
    this.width,
    this.height,
  });

  @override
  double getArea() {
    print("Getting rectangle's area");
    return width * height;
  }
}

class Square extends Rectangle {
  double side;

  // super lets us access things in the parents class
  // you'll often see it in an object's constructor
  Square(this.side)
      : super(
          width: side,
          height: side,
        );
}

class Oval implements Shape {
  final double minorRadius;
  final double majorRadius;

  Oval({
    this.minorRadius,
    this.majorRadius,
  });

  @override
  double getArea() {
    print("Getting oval's area");
    return minorRadius * majorRadius * math.pi;
  }
}

class Circle extends Oval {
  final double radius;

  Circle(this.radius)
      : super(
          minorRadius: radius,
          majorRadius: radius,
        );
}

void main() {
  Rectangle rectangle = Rectangle(width: 2, height: 4);
  Square square = Square(4);
  Oval oval = Oval(majorRadius: 10, minorRadius: 5);
  Circle circle = Circle(7.5);

  // Polymorphism -- using a classes children as that object
  // subtyping
  // We can use rectangles, squares, ovals and circles as shapes
  List<Shape> shapesList = [rectangle, square, oval, circle];

  // a language that is polymorphic knows to get the right data (function) from
  // the right class
  shapesList.forEach((e) {
    // dart is smart enough to know 
    e.getArea();
  });

  // clean code
  // database
  // class hiveDB implements database
  // class sqlightDB implements database
  // In your code, you can use database everywhere instead of hiveDB or sqlightDB
  // so you can very easily switch one for the other when needed
}
