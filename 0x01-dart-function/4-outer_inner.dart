void outer(String name, String id) {
  String Function() inner = () {
    List<String> names = name.split(' ');
    String initials = '${names[0][0]}.${names[1][0]}';
    return 'Hello Agent $initials your id is $id';
  };
  print(inner());
}

String inner() {
  return '';
}