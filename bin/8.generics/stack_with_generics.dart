void main() {
  var intStack = Stack<int>();
  var stringStack = Stack<String>();
  intStack.push(1);
  intStack.push(2);
  intStack.push(3);
  intStack.push(4);
  print(intStack.peak);
  intStack.pop();
  print(intStack.peak);
  print(intStack.length);

}

class Stack<T> {
  final List<T> _stack = [];

  T get peak => _stack.last;

  int get length => _stack.length;

  bool get canPop => _stack.isNotEmpty;

  T pop() {
    final T last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(T value) => _stack.add(value);
}
