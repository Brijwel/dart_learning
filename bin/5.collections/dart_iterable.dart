void main(){
  ///Iterable is lazy
  Iterable<int> iterableInt = [1, 2, 3, 4];
  print(iterableInt.elementAt(1));
  print(iterableInt.first);
  print(iterableInt.last);
  print(iterableInt.length);
  print(iterableInt.contains(1));
  print(iterableInt.skip(2)); //skip the elements until position 2 or index 1
  //print(iterableInt.single); //throws Bad state: Too many elements if Iterable has more than one element
  ///traversing using for each loop
  for (var element in iterableInt) {
    print(element);
  }

  ///traversing using iterator
  var iterator=iterableInt.iterator;
  while(iterator.moveNext()) {
    print(iterator.current);
  }
}