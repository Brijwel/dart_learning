void main() {
  ///A function without a name is known as an anonymous function
  ///Anonymous function Syntax
  ///
  /// (parameterList){
  ///   // inner statement(s)
  ///  }

  final names = const ['brijwel', 'varshu', 'binish'];
  names.forEach((value) {
    print('name : $value');
  });

  ///can also be written as for single line function
  names.forEach((value) => print('name : $value'));

  ///can also be assigned to a variable and pass the variable
  var printFunction = (String value) => print('name : $value');
  names.forEach(printFunction);
}
