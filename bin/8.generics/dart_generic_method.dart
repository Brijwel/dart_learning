void main() {
  var stringList = ['brijwel', 'binish'];
  var stringItem = getItem<String>(stringList, 1);
  print(stringItem);

  var intList = [1, 2, 3, 4];
  var intItem=getItem<int>(intList, 3);
  print(intItem);
}

T? getItem<T>(List<T> list, int index) =>
    list.asMap().containsKey(index) ? list[index] : null;
