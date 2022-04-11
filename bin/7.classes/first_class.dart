import 'dart:math';

void main() {
  FirstClass a = FirstClass.withPrivateField2('brijwel', 25);
  print(a); //prints string returned by toString() method
  ///private field and method are assessable here since its in same file
  print(a._privateField);

  print(a.publicField);
  a._privateMethod();

  ///public field and method
  a.publicMethod();
  Shape emptyShape = Shape.none();
  Shape randomShape = Shape.random();
  print('randomShape width ${randomShape.getWidth()}');
  print('randomShape height ${randomShape.getHeight()}');

  var s1 = SingletonClass.instance();
  var s2 = SingletonClass.instance();
  print('is s1 and s2 identical ${identical(s1, s2)}');

  var c1 = ConstantClass();
  var c2 = ConstantClass();

  print('is c1 and c2 identical ${identical(c1, c2)}');

  var d1 = const ConstantClass();
  var d2 = const ConstantClass();

  print('is d1 and d2 identical ${identical(d1, d2)}');
}

class FirstClass {
  /// in dart we can only have one unnamed constructor
  // default constructor
  //FirstClass();

  // can also be written as
  /*FirstClass(){

  }*/

  ///named constructor
  ///in dart we can have any number of named constructor
  FirstClass.withPrivateField(this._privateField, this._name, this._age);

  FirstClass.withPrivateField2(this._name, this._age);

  FirstClass.withPrivateField3(this._name, this._age) {}

  /// in dart private field and method in declared by adding _ prefix to its name
  /// private filed are only assessable in the file its declared
  int _privateField = 2;
  int publicField = 3;

  String _name;
  int _age;

  void _privateMethod() {
    print('this is from private method');
  }

  void publicMethod() {
    print('this is from public method');
  }

  @override
  String toString() => 'name $_name age $_age';
}

class Shape {
  final double width;
  final double height;

  Shape.none({this.width = 0.0, this.height = 0.0});

  Shape(this.width, this.height);

  ///factory constructor to return custom object
  ///here we can't access this keyword
  ///can only return the type of that class
  factory Shape.random() {
    final width = Random().nextDouble();
    final height = Random().nextDouble();
    return Shape(width, height);
  }

  double getWidth() => this.width;

  double getHeight() => this.height;
}

class SingletonClass {
  SingletonClass._singleton();

  static late final SingletonClass _instance = SingletonClass._singleton();

  factory SingletonClass.instance() => _instance;
}

class ConstantClass {
  const ConstantClass();
}
