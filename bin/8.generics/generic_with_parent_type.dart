
void main() {
  ArithmeticOperator<int> intOperator = ArithmeticOperator(40);
  print(intOperator.plus(1));
  print(intOperator.minus(1));
  print(intOperator.increment());
  print(intOperator.decrement());
  print(intOperator.multiplyBy(13));

  ArithmeticOperator<double> doubleOperator = ArithmeticOperator(40.00);
  print(doubleOperator.plus(1));
  print(doubleOperator.minus(1));
  print(doubleOperator.increment());
  print(doubleOperator.decrement());
  print(doubleOperator.multiplyBy(13));
}
/// here any sub class of num can be used to do arithmetic operations
/// ie; int and double
class ArithmeticOperator<T extends num> {
  T _value;

  ArithmeticOperator(this._value);

  T plus(T value) => (_value + value) as T;

  T minus(T value) => (_value - value) as T;

  T increment() => (_value + 1) as T;

  T decrement() => (_value - 1) as T;

  T multiplyBy(T value) => (_value * value) as T;
}
