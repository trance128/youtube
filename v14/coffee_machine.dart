// As long as you know hwo to use a CoffeeMachine, it's enough.
// You don't need to know how it works behind this scenes.
// This is abstraction.

class CoffeeMachine {
  int _coffeeBeansServings;
  int _usesSinceLastCleaning;
  bool _needsCleaning;

  CoffeeMachine() {
    _coffeeBeansServings = 100;
    _usesSinceLastCleaning = 0;
    _needsCleaning = false;
  }

  String makeCoffee(int howManyCoffees) {
    if (_coffeeBeansServings <= 0) {
      return "Out of coffee beans. No coffee given";
    }

    int coffeesReceived;

    if (howManyCoffees > _coffeeBeansServings) {
      coffeesReceived = _coffeeBeansServings;
      _coffeeBeansServings = 0;
    } else {
      coffeesReceived = howManyCoffees;
      _coffeeBeansServings = _coffeeBeansServings - howManyCoffees;
    }

    _usesSinceLastCleaning++;

    if (_usesSinceLastCleaning > 72) _needsCleaning = true;

    if (_needsCleaning) {
      return "Coffee tastes disgusting.  Machine needs cleanings";
    }

    return "Received $coffeesReceived coffee${coffeesReceived > 1 ? 's' : ''}.\n${coffeesReceived == howManyCoffees ? "Happpiness" : "Machine ran out of beans before completing order."}.";
  }

  void cleanCoffeeMachine() {
    _usesSinceLastCleaning = 0;
    _needsCleaning = false;
  }

  void refillCoffeeBeans(int servings) {
    if (_coffeeBeansServings + servings > 100) {
      print("That won't fit in the machine.");
      return;
    }

    _coffeeBeansServings += servings;
  }
}
