/* Syntax for mixin class
mixin Mixin1{
  // code
}

mixin Mixin2{
  // code
}

class ClassName with Mixin1, Mixin2{
  // code
}
*/
// mixin ElectricVariant {
//   void electricVariant() {
//     print('This is an electric variant');
//   }
// }

// mixin PetrolVariant {
//   void petrolVariant() {
//     print('This is a petrol variant');
//   }
// }

// // with is used to apply the mixin to the class
// class Car with ElectricVariant, PetrolVariant {
//   // here we have access of electricVariant() and petrolVariant() methods
// }

// void main() {
//   var car = Car();
//   car.electricVariant();
//   car.petrolVariant();
// }

abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  // abstract method
  void run();
}

// mixin CanRun is only used by class that extends Animal
mixin CanRun on Animal {
  // implementation of abstract method
  @override
  void run() => print('$name is Running at speed $speed');
}

class Dog extends Animal with CanRun {
  // constructor
  Dog(String name, double speed) : super(name, speed);
}

void main() {
  var dog = Dog('My Dog', 25);
  dog.run();
}

// Not Possible
// class Bird with Animal { } 
