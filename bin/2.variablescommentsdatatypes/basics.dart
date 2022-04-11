void main() {
  ///variable assignment statement
  var myAge = 25;
  print(myAge);

  ///Immutability
  /**
   * Dart uses the keywords const and final for values that don’t change.
   * Use const for values that are known at compile-time. Use final for values
   * that don’t have to be known at compile-time but cannot be reassigned after
   * being initialized.
   */
  const speedOfLight = 299792458;
  print(speedOfLight);
  final name = "Brijwel";
  print(name);

  ///Nullability
  String? firstName = null;
  print(firstName); // null
  firstName = "Brijwel";
  print(firstName); // Brijwel

  ///null aware operator
  print("my name is ${firstName ?? "Unknown"}");
  print("my name length is ${firstName?.length}");
  firstName = null;
  print("my name is ${firstName ?? "Unknown"}");
  print("my name length is ${firstName?.length}");

  ///Late variables
  ///The late modifier means “enforce this variable’s constraints at runtime instead of at compile time”.
  /// The late modifier lets you defer initialization, but still prohibits you from treating it like a nullable variable.
  late int age;
  //print('age is $age'); ///this won't compile since age is not assigned
  age = 25;
  print('age is $age');

  int _readThermometer() {
    print('_readThermometer() called');
    return 180;
  }

  ///Lazy initialization
  ///value is assigned only when _temperature is accessed first time
  ///like lazy{} in kotlin
  late int _temperature = _readThermometer();
  print('_readThermometer() not called yet');

  ///prints '_readThermometer() called' text in _readThermometer() function
  ///since we are accessing _temperature variable
  print(_temperature);

  ///but this does not prints '_readThermometer() called' text in _readThermometer() function
  ///since _temperature value is assigned already
  print(_temperature);

  ///late can also be used with final
  late final double PIE = 3.14;

  ///Dart Printing and String interpolation
  print("my age is $myAge");
  print("My name is Brijwel and my age is ${myAge}");

  ///Block in Dart
  {
    //start of block

    //block of statement(s)

  } //end of block

  ///comments
  // This is a single-line comment.
  /*
   This is a multi-line comment block. This is useful for long
   comments that span several lines.
   */

  /// This
  /// is
  /// documentation
  /// comment

  /**
   * This is also a documentation comment
   */

  ///Basic Dart Types
  /**Dart uses the following basic types:
      int: Integers
      double: Floating-point numbers
      bool: Booleans
      String: Sequences of characters
   */

  print("***data types***");
  int number = 12;
  print("int $number");
  double doubleNumber = 12.0;
  print("double $doubleNumber");
  bool booleanValue = true;
  print("bool $booleanValue");
  String stringValue = "Brijwel";
  print("String $stringValue");
  String stringValueSingleQuote = 'Brijwel';
  print("String $stringValueSingleQuote");

  ///escaping string
  var quote =
      'If you can\'t explain it simply\nyou don\'t understand it well enough.';
  print(quote);

  ///raw string
  var rawString =
      r"If you can't explain it simply\nyou don't understand it well enough.";
  print(rawString);

  ///If you use the dynamic keyword instead of var, you get what’s effectively
  ///a dynamically typed variable
  print("***dyamic***");
  dynamic canHaveAnyValue = 12;
  print("canHaveAnyValue $canHaveAnyValue");
  canHaveAnyValue = 12.3;
  print("canHaveAnyValue $canHaveAnyValue");
  canHaveAnyValue = false;
  print("canHaveAnyValue $canHaveAnyValue");
  canHaveAnyValue = "Brijwel";
  print("canHaveAnyValue $canHaveAnyValue");
}
