void main() {
  ///arithmetic operators
  print("Addition ${40 + 2}"); // 42

  print("Subtraction ${44 - 2}"); // 42

  print("Multiplication ${21 * 2}"); // 42

  print("Division ${84 / 2}"); // 42.0

  print("Modulo ${392 % 50}"); // 42.0

  ///compound arithmetic/assignment operators
  var value = 42.0;

  value += 1;
  print(value); // 43.0

  value -= 1;
  print(value); // 42.0

  value *= 2;
  print(value); // 84.0

  value /= 2;
  print(value); // 42.0

  value++;
  print(value); // 43.0

  value--;
  print(value); // 42.0
}
