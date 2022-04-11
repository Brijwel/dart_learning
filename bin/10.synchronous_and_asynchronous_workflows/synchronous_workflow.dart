///task that need to be solved before moving to next task
void main() {
  var showInt = show(10);
  print(showInt);
}

Iterable<int> negativeGenerator(int n) sync* {
  print('Started');
  for (var i = 1; i <= n; i++) {
    print('i $i');
    yield -1;
    print('Ended');
  }
}


Iterable<int> show(int n) sync* {
  print('Started');
  for (var i = 1; i <= n; i++) {
    print('i $i');
    yield 1;
    print('Ended');
  }
  yield*negativeGenerator(n);
}
