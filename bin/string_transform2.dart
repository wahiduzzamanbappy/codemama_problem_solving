import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  String output = transform(input);
  print(output);
}

String transform(String s) {
  String result = '';

  for (int i = 0; i < s.length; i++) {
    result += s[i];
    if ((i + 1) % 2 == 0 && i + 1 < s.length - 0) {
      result += 'x';
    }
  }
  return result;
}
