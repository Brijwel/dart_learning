void main() {
  Bird bird = Bird(name: "Parrot");
  bird.whatAmI();
  bird.fly();
  Duck duck = Duck(name: 'Munchkin');
  duck.whatAmI();
  duck.swim();
  duck.fly();

  Cat cat=Cat(name: 'Tom');
  Mouse mouse=Mouse(name: 'Jerry');
  cat.chase(mouse);

}

abstract class Animal {
  final String name;

  Animal({required this.name});

  void whatAmI() => print('I am an animal');

  void chase(Animal animal) {}

  void abstractMethod();
}

class Bird extends Animal {
  Bird({required String name}) : super(name: name);

  @override
  void whatAmI() => print('I am an bird');

  void fly() {
    print('flying');
  }

  @override
  void abstractMethod() {
    // TODO: implement abstractMethod
  }
}

class Duck extends Bird {
  Duck({required String name}) : super(name: name);

  @override
  void whatAmI() => print('I am an duck');

  @override
  void fly() {
    print('not able to fly');
  }

  void swim() {
    print('summing');
  }
}

class Elephant extends Animal {
  Elephant({required String name}) : super(name: name);

  @override
  void abstractMethod() {
    // TODO: implement abstractMethod
  }
}

class Mouse extends Animal {
  Mouse({required String name}) : super(name: name);

  @override
  void abstractMethod() {
    // TODO: implement abstractMethod
  }
}

class Cat extends Animal {
  Cat({required String name}) : super(name: name);

  /// all animals are not Mouse Animal can be a Bird or Elephant
  /// to override static check using covariant key word
  /// covariant is used to tighten a type
  @override
  void chase(covariant Mouse animal) {}

  @override
  void abstractMethod() {
    // TODO: implement abstractMethod
  }
}
