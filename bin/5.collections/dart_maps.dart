void main() {
  ///Maps is an unordered pair of key and values.
  ///The keys of the map must unique, values can be the same

  Map<String, int> calories = {
    'cake': 500,
    'donuts': 150,
    'cookies': 100,
  };
  print(calories);

  ///add new value to map
  calories["ice cream"] = 300;
  print(calories);

  ///get value by key
  print("donuts calories ${calories['donuts']}");

  var studentsRank = {
    'varsh': 1,
    'brijwel': 3,
    'binish': 2,
  };
  print(studentsRank);
  print("brijwel is ranked ${studentsRank['brijwel']}");
}
