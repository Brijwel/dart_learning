import 'first_class.dart';

void main() {
  var a1 = A();
  var a2 = A();
  var d = Object();
  print('is a1 and a2 identical ${identical(a2, a2)}');

  print(a1.hashCode);
  print(a1.toString());
  print(a1.runtimeType);

  print(a1._privateField);
  print(a1.a);
  a1.a=12;
  print(a1.a);
  print(a1.b);
  print(a1.c);
  //assigning late variable before accessing
  a1.d=32;
  print(a1.d);
  //can be reassigned
  a1.d=33;
  print(a1.d);
  a1.e=34;
  print(a1.e);
  //cannot be reassigned since its final will throw LateInitializationError: Field 'e' has already been initialized.
  //a1.e=34;
  print(a1.f);
  A.g=12;
  print(A.g);
  A.g=13;
  print(A.g);

  A.h=14;
  print(A.h);

  print(A.i);

  A.j=30;
  print(A.j);
  //cannot be reassigned since its final will throw LateInitializationError: Field 'e' has already been initialized.
  //A.j=31;
  print(A.k);

  //A.k=23; //cannot be reassigned throw compile time error
  var firstClass = FirstClass.withPrivateField2('brijwel', 25);

  ///here the private field and method can't be accessed since its in different file
  ///throws compile time error
  //print(firstClass._privateField);
  //firstClass._privateMethod();

  ///public field and method
  print(firstClass.publicField);
  firstClass.publicMethod();
}

/// all class in dart inherits Object class by default except null
/// all non-`Null` Dart class is a subclass of `Object`.
///
class A {


  int? _privateField = 1;
  int? a;
  int b = 1;
  //cannot be reassigned
  final int c = 2;
  //should be assigned before accessing or throws LateInitializationError
  late int d;
  //should be assigned before accessing or throws LateInitializationError
  //can only be assigned once
  late final int e;
  //will be initialized only when accessing the variable
  //cannot be reassigned
  //similar to lazy in kotlin
  late final int f = 5;

  //
  static int g = 6;
  static late int h;
  static late int i = 8;
  static late final int j;

  static const int k = 10;

  @override
  String toString() {
    return 'This is a instance of class A';
  }
}
