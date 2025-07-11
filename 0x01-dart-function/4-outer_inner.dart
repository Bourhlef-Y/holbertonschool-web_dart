void outer(String name, String id) {
  String Function() inner = () {
    List<String> names = name.split(' ');
    String initial = names[1][0];
    return 'Hello Agent $initial.${names[0]} your id is $id';
  };
  print(inner());
}

String inner() {
  return '';
}