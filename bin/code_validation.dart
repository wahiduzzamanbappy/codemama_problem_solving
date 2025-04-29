import 'dart:io';

bool isValidCode(String code) {
  if (code[0] != '#') {
    return false;
  }
  if (code.length != 7) {
    return false;
  }

  for (int i = 1; i < code.length; i++) {
    String ch = code[i];
    if (!RegExp(r'[0-9a-fA-F]').hasMatch(ch)) {
      return false;
    }
  }
  return true;
}

void main() {
  String userInput = stdin.readLineSync()!;

  print(isValidCode(userInput));
}
