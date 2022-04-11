import 'dart:collection';

void main() {
  ///A Queue is a collection that can be manipulated at both ends.
  ///Queues are useful when you want to build a first-in, first-out collection.


  Queue<int> queue = new Queue();
  print("Default implementation ${queue.runtimeType}");
  queue.add(10);
  queue.add(20);
  queue.add(30);
  queue.add(40);
  print(queue);

  queue.addFirst(5);
  print(queue);

  queue.addLast(50);
  print(queue);

  queue.add(60);
  print(queue);

  queue.addAll([70,80]);
  print(queue);

  queue.removeFirst();
  queue.removeLast();
  print(queue);
}
