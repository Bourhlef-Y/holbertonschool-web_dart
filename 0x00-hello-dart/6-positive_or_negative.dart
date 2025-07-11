void main(List<String> args) {
  String numberStr = args[0];
  int number = int.parse(numberStr);

  if (number > 0) {
    print('$number is positive');
  } else if (number == 0) {
    print('$number is zero');
  } else {
    print('$number is negative');
  }
}
