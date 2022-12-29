


 abstract class Vehicle{
late int wheel;
void drive();
int a = 90;
 }

  class Car implements Vehicle{
  @override
  int a = 90;

  @override
  int wheel = 20;

  @override
  void drive() {
    // TODO: implement drive
  }


  }






// class A{
//   void breath(){
//
//   }
// }
//
// class Animal {
//   void sleep() {
//     print('sleeping');
//   }
//
//   void eat() {
//     print('eat');
//   }
// }
// class DOg extends Animal with A{
//   @override
//   void sleep() {
//    print('dog is sleeping');
//     super.sleep();
//   }
//
//
// }
// class Cat extends Animal with A {
//   @override
//   void eat() {
//     print('cat is eating');
//     super.eat();
//   }
