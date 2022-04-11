void main() {
  ///continue - ignore and continue to next loop
  var i = 1;
  do {
    print(i);
    if (i == 5) {
      continue;
    }
    ++i;
  } while (i <= 10);

  ///break - break current loop
  i = 1;
  do {
    print(i);
    if (i == 5) {
      break;
    }
    ++i;
  } while (i <= 10);
}
