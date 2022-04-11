library first_dart_library;

///any number of library can be made part of single library
///using part and part of keyword
// to make second_dart_library of first_dart_library
part 'second_dart_library.dart';
part 'third_dart_library.dart';

// to import library
//no needed now since second_dart_library is part of first_dart_library
//import 'second_dart_library.dart';

const someConstValueFromLibOne = 121;

class FirstLibrary {
  final int _privateField = 12;

  void _privateMethod() {
    print('from private method in FirstLibrary');
  }

  final int publicField = 13;

  void publicMethod() {
    print('from public method in FirstLibrary');
  }
}

void main(){

  ///here private field and method is accessible as its in same file
  var firstLib=FirstLibrary();
  print(firstLib._privateField);
  print(firstLib.publicField);
  firstLib._privateMethod();
  firstLib.publicMethod();

  ///here private field and method is accessible even though its in different library
  ///as now second_dart_library is part of first_dart_library
  var secondLib=SecondLibrary();
  print(secondLib._privateField);
  print(secondLib.publicField);
  secondLib._privateMethod();
  secondLib.publicMethod();

  var thirdLib=ThirdLibrary();
  print(thirdLib._privateField);
  print(thirdLib.publicField);
  thirdLib._privateMethod();
  thirdLib.publicMethod();
}
