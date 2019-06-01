// printNumber(num aNumber) {
//   pulsName(String name) {
//     print(name);
//     return name;
//   }

//   print('This number is $aNumber,${pulsName('rewa')}');
//   var s = "In a raw string, even \n isn't special.";
//   print(s);

//   var list = ['apples', 'oranges', 'grapes', 'bananas', 'plums'];
//   list.forEach((item) {
//     print(list.indexOf(item).toString() + ': ' + item);
//   });

//   list.forEach((i) => print(list.indexOf(i).toString() + ":" + i));
// }

// Function aaa(num abody) {
//   return (num i) => abody + i;
// }

// class car {
//   String name;
//   String color;
//   say() {
//     print('I am  $name, the $color car');
//   }
// }

// void main() {
//   // var number = 24;
//   // printNumber(number)
//   // var add1 = aaa(20);
//   // var add2 = aaa(200);
//   // print(add1(4));
//   // print(add2(4));

//   // StringBuffer str = new StringBuffer('Dart is fun');
//   // for (var i = 0; i < 5; i++) {
//   //   str.write('!');
//   // }
//   // print(str);

//   // var tom = new car();
//   // var tom = new car()
//   //   ..color = 'grey'
//   //   ..name = 'Tom'
//   //   ..say();

//   // print(tom.runtimeType);

//   // var emp = new Employee.fromJson({});
//   // (emp as Person).firstName = 'Rewa';

//   prinrCar(Vehicle vehicle) => vehicle.aaa();

//   prinrCar(new Vehicle('bwm'));
//   prinrCar(new Volvo());

//   var names = new List<String>();
//   names.addAll(['Seth', 'Kathy', 'Lars']);
// // ...
//   names.add('42');
//   names.add('42');
//   names.add('42');
//   print(names);

//   var nameSet = new Set<String>.from(names);

//   print(nameSet);

//   // T first<T>(List<T> ts){
//   //   T tmp ?= ts[0];
//   //   return tmp;
//   // }

//   // print(first(names));
// }

// class Vehicle {
//   String brand;
//   Vehicle(this.brand);
//   aaa() {
//     print('this is $brand car');
//   }
// }

// class Volvo implements Vehicle {
//   String brand = 'vovlo';
//   // @override
//   aaa() {
//     // TODO: implement aaa
//     print(brand);
//     return null;
//   }
// }

// class Person {
//   String firstName;
//   // Person(this.firstName);
//   Person.fromJson(Map json) {
//     print('in Person');
//   }
// }

// class Employee extends Person {
//   Employee.fromJson(Map data) : super.fromJson(data) {
//     print('in Employee');
//   }
// }

void main(List<String> args) {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  numbers.where((number) => number % 2 == 0).forEach((f) => print(f));
}
