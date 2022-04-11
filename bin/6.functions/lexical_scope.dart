///Lexical scope
///It is the term used in various programming languages (not just in dart),
/// to describe a condition where the scope of the variable is not present
/// when the control is out of the block of code where the scope was present.
/// Dart is a lexically scoped language, i.e. you can find the scope of the
/// variable by the help of the braces.
/// parameter of function are available only within its scope

int topLevel=0;
void main() {
  topLevel=1;
  //aLevel=1;  variable in lower level of function scope cant be accessed from higher level
  void a(){
    int aLevel=0;
    topLevel=2; //but variable in top level can be accessed from lower level function scope
    void b(){
      int bLevel=0;
      aLevel=1;
      topLevel=3;
    }
  }
}
