import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;

  bool isFunny = true;
  for (int i = 0; i < str.length; i++) {
    if (i % 2 == 0 &&
        (str.codeUnitAt(i) < 'a'.codeUnitAt(0) &&
            str.codeUnitAt(i) < 'z'.codeUnitAt(0))) {
      isFunny = false;
      break;
    }
    if (i % 2 == 0 &&
        (str.codeUnitAt(i) < 'A'.codeUnitAt(0) &&
            str.codeUnitAt(i) < 'Z'.codeUnitAt(0))) {
      isFunny = false;
      break;
    }
  }

  print(isFunny ? 'Yes' : 'No');
}
