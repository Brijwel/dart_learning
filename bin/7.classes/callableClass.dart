void main(){
  
  ///Class whose object can be treated as function
  ///to make a class callable create a function named call

  final callableClass=CallableClass();
  ///class object can be call as normal function
  callableClass();

  ///first call for constructor
  ///second call for call function
  CallableClass()();
}
class CallableClass{
  void call()=>print('CallableClass is called');
}