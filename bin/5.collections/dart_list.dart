import 'dart:math';

void main() {
  ///A list is an array of elements arranged in an ordered sequence.

  ///explicit List type with dynamic value
  List anyList = ['Brijwel', 24, true, 20.0];

  ///can also be written as
  //List<dynamic> anyList = ['Brijwel', 24, true, 20.0];
  print(anyList);

  ///explicit List<String> type
  List<String> desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  print(desserts);
  print(desserts[1]);
  print(desserts.first);
  print(desserts.last);
  print(desserts.isEmpty);
  print(desserts.isNotEmpty);
  print(desserts.reversed);
  print("Has cookies ${desserts.any((element) => element == "cookies")}");
  print(
      "Are all desserts string type ${desserts.every((element) => element is! int)}");
  desserts.add("ice creme");
  print(desserts);
  desserts.removeAt(0);
  print(desserts);
  desserts.remove('pie');
  print(desserts);

  ///filter list
  final filteredDesserts = desserts.where((element) => element.startsWith('c'));
  print("filtered desserts starting with 'c' $filteredDesserts");

  ///iterate through list using for each loop
  print("***iterate through list***");
  for (final dessert in desserts) {
    print(dessert);
  }

  ///traversing list using iterator
  print('----traversing list using iterator----');
  var dessertsIterator = desserts.iterator;
  while (dessertsIterator.moveNext()) {
    print(dessertsIterator.current);
  }

  ///Dart infers numbers as List type
  final numbers = [42, -1, 299792458, 100];
  print(numbers);

  final studentsASection = ['StudentA1', 'StudentA2', 'StudentA3', 'StudentA4'];
  print('studentsASection $studentsASection');
  final studentsBSection = ['StudentB1', 'StudentB2', 'StudentB3', 'StudentB4'];
  print('studentsBSection $studentsBSection');
  List<String>? studentsCSection = null;
  print('studentsCSection $studentsCSection');

  ///Spreads operator …
  ///Null aware Spreads operator …?
  ///A spread takes a collection (for example, a list) and puts its contents into the surrounding collection
  final totalStudentsInSchool = [
    ...studentsASection,
    ...studentsBSection,
    ...?studentsCSection
  ];
  print('totalStudentsInSchool $totalStudentsInSchool');

  ///mapping list
  final studentInitials = totalStudentsInSchool.map((name) {
    if (name.isNotEmpty)
      return name[0];
    else
      return '';
  }).toList();
  print('studentInitials $studentInitials');
}
