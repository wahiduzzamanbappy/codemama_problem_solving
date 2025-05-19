import 'dart:io';

bool isRepDigit(String number) {
  if (number.isEmpty) return false;
  if (!RegExp(r'^\d+$').hasMatch(number)) return false;

  String firstChar = number[0];
  for (int i = 1; i < number.length; i++) {
    if (number[i] != firstChar) return false;
  }
  return true;
}

void main() {
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('false');
  } else {
    print(isRepDigit(input.trim()).toString());
  }
}
