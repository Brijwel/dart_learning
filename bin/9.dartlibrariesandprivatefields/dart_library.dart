
//no need to import second_dart_library as its part of first_dart_library now
import 'package:dart_learning/library/first_dart_library.dart';

//only TopLib is needed since it exports LibOne and LibTwo
import 'package:dart_learning/single_library_with_multiple_library/top_library.dart';

///in dart all files are library
void main() {

  // only public variable and method is accessible
  var firstLib = FirstLibrary();
  print(firstLib.publicField);
  firstLib.publicMethod();
  var secondLib = SecondLibrary();
  print(secondLib.publicField);
  secondLib.publicMethod();

  var val1=someConstValueFromLibOne;
  var val2=someConstValueFromLibTwo;
  var val3=someConstValueFromLibThree;

  print(val1);
  print(val2);
  print(val3);


  var libOne=LibOne();
  var libTwo=LibTwo();

}
