void main() {
  ///Extension methods, are a way to add functionality to existing libraries.
  ///its similar to Extension function in kotlin
  ///https://dart.dev/guides/language/extension-methods

  int integer = 20;
  print('is $integer even ${integer.findIfEven()}');
  print('${integer.increment()}');
  print('${integer.decrement()}');

  var name = 'Brijwel';
  print(name.firstChar());
  print(name.lastChar());

  var person = Person(name: 'Brijwel', age: 25);
  print(person.toJson());
  person.printDetails();
}

extension IntegerExt on int {
  bool findIfEven() => this % 2 == 0;

  int increment() => this + 1;

  int decrement() => this - 1;
}

extension StringExt on String {
  String lastChar() => this[this.length - 1];

  String firstChar() {
    if (this.isEmpty) return '';
    return this[0];
  }
}

extension PersonExt on Person {
  Map toJson() => {'name': this.name, 'age': this.age};

  void printDetails() => print('name ${this.name}\nage ${this.age}');
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}
