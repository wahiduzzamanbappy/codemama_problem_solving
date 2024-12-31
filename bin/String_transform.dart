import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  String output = transform(input);
  print(output);
}

String transform(String s) {
  String result = '';
  for (int i = 0; i < s.length; i++) {
    if ((i + 1) % 3 == 0) {
      result += s[i].toUpperCase();
    } else {
      result += s[i];
    }
  }
  return result;
}
/*String transform(String s) {
  String result = '';
  for (int i = 0; i < s.length; i++) {
    if ((i + 1) % 3 == 0) {
      result += s[i].toUpperCase();
    } else {
      result += s[i];
    }
  }
  return result;
}*/
