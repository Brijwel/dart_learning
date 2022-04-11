///Lexical closure
///In programming languages, a lexical closure,
/// also called closure or function closure, is a way of implementing
/// lexical scope name binding in a function. It is a function object that
/// has access to variables in its lexical scope, even when the function is
/// used outside the scope.
void main() {
  final carMaker=makeCar('BMW');
  /// here the function returned holds reference to the lexical scope containing
  /// previous variable
  /// in this example it holds reference to make variable
  print(carMaker('M5'));
}

///Function which returns a function which takes parameter from its main function
String Function(String) makeCar(String make) {
  final engine = '4.4 V8';
  return (model) => '$make $model $engine'; // holds reference to make variable
}
