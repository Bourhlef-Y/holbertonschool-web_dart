import '2-sumfunc.dart';

void main(List<String> args) {
  var a = int.parse(args[0]);
  var b = int.parse(args[1]);
  print('Add ${a} + ${b} = ${add(a, b)}');
  print('Sub ${a} - ${b} = ${sub(a, b)}');
}