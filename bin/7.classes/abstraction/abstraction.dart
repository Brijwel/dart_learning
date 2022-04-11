void main() {
  /// dart does no have interface instead abstract class
  /// should be used to achieve abstraction
  /// implements keyword is used to implement abstract class
  /// multiple abstract class can be implemented by using comma like in java

  final UserRepository userRepo = UserRepositoryImpl();
  userRepo.create('brijwel');
  userRepo.create('binish');
  userRepo.create('varshu');
  print(userRepo.getUsers());
  userRepo.delete('binish');
  print(userRepo.getUsers());
  userRepo.update('brijwel', 'Brijwel');
  print(userRepo.getUsers());
}

///explicit interface = abstract class
///implement abstract class for interface
abstract class UserRepository {
  void create(String userName);

  void update(String oldUserName, String newUserName);

  void delete(String userName);

  List<String> getUsers();
}

class UserRepositoryImpl implements UserRepository {
  List<String> _users = [];

  @override
  void create(String userName) {
    if (_users.contains(userName)) {
      print('The user $userName already exists');
    } else {
      _users.add(userName);
      print('The user $userName created');
    }
  }

  @override
  void delete(String userName) {
    if (_users.contains(userName)) {
      _users.remove(userName);
      print('The user $userName deleted');
    } else {
      print('The user $userName doest not exists to delete');
    }
  }

  @override
  List<String> getUsers() => _users;

  @override
  void update(String oldUserName, String newUserName) {
    if (oldUserName == newUserName) {
      print('The old and new user name can\'t be same');
    } else if (_users.contains(newUserName)) {
      print('The user $newUserName already exist');
    } else {
      if (_users.contains(oldUserName)) {
        var index = _users.indexOf(oldUserName, 0);
        _users[index] = newUserName;
        print('The user $oldUserName is updated to $newUserName');
      } else {
        print('The user $oldUserName doest not exists to update');
      }
    }
  }
}

///implicit interface
///all class are implicit interface
class A {
  void methodA() {}


  ///in dart normal class can contain abstract method
  ///to declare a abstract method in normal class use keyword external
  external void abstractMethodInNormalClass();
}

class B {
  void methodB() {}
}

class C {
  void methodC() {}
}

class ABC extends A implements  B, C {
  @override
  void methodA() {
    // TODO: implement methodA
  }

  @override
  void methodB() {
    // TODO: implement methodB
  }

  @override
  void methodC() {
    // TODO: implement methodC
  }

  @override
  void abstractMethodInNormalClass() {
    // TODO: implement abstractMethodInNormalClass
  }

}
