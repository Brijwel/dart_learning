void main() {
  ///A set is an unordered collection of values.
  ///We can’t get the values by their index values as they are unordered.
  ///Values in set are unique i.e. they can’t be repeated.
  Set<int> set = {
    1,
    1,
    2,
    3,
    4,
    5
    // here duplicate 1 will be ignored since values in set are unique
  };
  print(set);


  ///Creating a Set using List
  List<String> namesList = ['brijwel', 'binish','brijwel','varshu'];
  print('namesList $namesList');
  Set<String> namesSet = Set.from(namesList);  // here duplicate 'brijwel' will be ignored since values in set are unique
  print('namesSet $namesSet');
  namesSet.add('new name');
  print('namesSet $namesSet');

  for (final name in namesSet) {
    print(name);
  }
}
