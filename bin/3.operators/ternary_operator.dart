void main() {
  ///the Dart ternary operator syntax is the same as the Java ternary operator syntax
  final number = 1;
  final isEven = number % 2 == 0 ? true : false;
  print('$number is even $isEven');

  final age = 18;
  final isMajor = age >= 18 ? true : false;
  print('person with age $age is major $isMajor');
}
