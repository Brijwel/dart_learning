

///Isolate is a component where all dart code runs
///dart is single threaded
///dart spans only one isolate when running application called main with one thread
///we can span any isolate by using parallelism but consumes more resources

void main() {
  print("task1");
  print("task2");
  Future(() => print("task3"));
  Future.microtask(() => print("task4")); //given more importance
  Future(() => print("task5"));
  Future.delayed(const Duration(seconds: 5), () => print("task6"));
  print("task7");

}
