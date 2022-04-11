//not needed now as now second_dart_library is part of first_dart_library
//library second_dart_library;

// to make second_dart_library of first_dart_library
part of 'first_dart_library.dart';

const someConstValueFromLibTwo = 145;

class SecondLibrary {
  final int _privateField = 57;

  void _privateMethod() {
    print('from private method in SecondLibrary');
  }

  final int publicField = 353;

  void publicMethod() {
    print('from public method in SecondLibrary');
  }
}



