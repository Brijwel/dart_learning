void main() {
  /// Mixin are used to share behaviour between one or more classed
  /// Mixin are used to over come Deadly Diamond of Death (DDD) caused due to multiple inheritance
  /// Mixin cannot be extended
  /// Mixin classes are used using with keyword
  /// Mixin classes cannot contain constructor

  ///“In object-oriented programming languages, a Mixin is a class that
  /// contains methods for use by other classes without having to be the
  /// parent class of those other classes.”
  /// Official Doc : https://www.dartlang.org/guides/language/language-tour#adding-features-to-a-class-mixins

  Musician musician = Musician();

  ///here class declared later will be given important when deciding which perform() method to call
  ///hence perform() in Drummer class is called
  musician.perform(); // calls perform from Drummer
  musician.test(); // test calls perform from Drummer
}

///two was to use mixin

/// class with no constructor and method without implementation can also be used as mixin
///1
class A {
  void method() {}
}

///2
///dart provided mixin class
///cannot be inherited using extends
///cannot declare constructor
mixin B {
  void method() {}
}

class Performer {
  void performer() => print('Performs');
}

mixin Guitarist on Performer {
  void playGuitar() => print('Playing the guitar');

  void perform() => playGuitar();

  void test() => perform();
}

mixin Drummer {
  void playDrum() => print('Playing the drum');

  void perform() => playDrum();
}
mixin Test {
  void playDrum() => print('Playing the drum');

  void perform() => playDrum();
}

class Musician extends Performer with Guitarist, Drummer {}
