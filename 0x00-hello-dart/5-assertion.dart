void main(List<String> args) {
  /*
  Write Your code below 
   */
  assert(args.isNotEmpty, 'Please provide a number as a command-line argument');
  int number = int.parse(args[0]);
  assert(number >= 80, 'The score must be bigger or equal to 80');
  print('You Passed');
}