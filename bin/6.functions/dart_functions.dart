void main() {
  printHelloWorld();

  printName('brijwel');

  printName('is flutter best ${isFlutterBest()}');

  printName('sum of 5 and 8 is ${sumOfTwoNumber(5, 8)}');

  printName('sum of 2 and 7 is ${sumOfTwoNumberSingleLine(2, 7)}');

  printStudentName('Brijwel');
  printStudentName('Brijwel', 'R');

  printCounter(10);
  printCounter(20, 5);

  printAddress(
      'Yashwant Kunj Lbs Marg Hariniwas Circlenaupada Thane', "Tamil Nadu");

  printAddress(
      ' Yashwant Kunj Lbs Marg Hariniwas Circlenaupada Thane', "Tamil Nadu",
      city: 'Chennai', pinCode: '400602');

  printAddress(
      ' Yashwant Kunj Lbs Marg Hariniwas Circlenaupada Thane', "Tamil Nadu",
      city: 'Chennai', street: 'Circlenaupada', pinCode: '400602');

  printMessage();
  printMessage(message: 'Dynamic message');

  print(
      'sum of number 100 and 300 is ${findSumOfTwoNumber(num1: 100, num2: 300)}');
}

///function without parameter and return type
void printHelloWorld() {
  print('Hello world');
}

///function with parameter and without return type
void printName(String name) {
  print('My name is $name');
}

///function without parameter and with return type bool
bool isFlutterBest() {
  return true;
}

///function with parameter and return type int
int sumOfTwoNumber(int num1, int num2) {
  return num1 + num2;
}

///function can be simplified if it has only single line expression
int sumOfTwoNumberSingleLine(int num1, int num2) => num1 + num2;

///function with optional positional parameters
///positional parameters should be surrounded by []
///positional parameters should be nullable if default value is not provided
void printStudentName(String firstName, [String? lastName]) {
  print("First Name : $firstName");
  print("Last Name : $lastName");
}

///function with optional positional parameter with default value
void printCounter(int until, [int from = 1]) {
  print('Counter from : $from until : $until');
  for (var i = from; i <= until; i++) {
    print('Counter $i');
  }
}

///function with optional named parameters
///positional parameters should be surrounded by {}
///name parameters should be nullable if default value is not provided
void printAddress(String address, String state,
    {String? city, String? street, String? pinCode}) {
  print('********************');
  print('Address $address');
  print('State $state');
  print('City $city');
  print('Street $street');
  print('Pin Code $pinCode');
}

///function with optional named parameter with default value
void printMessage({String? message = 'Hello world'}) {
  print(message);
}

///function with named parameter with default value
int findSumOfTwoNumber({required int num1, required int num2}) {
  return num1 + num2;
}
