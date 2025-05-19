import 'dart:io';

String removeTrailingZeros(String s) {
  if (!s.contains('.')) return s;

  List<String> parts = s.split('.');
  String integerPart = parts[0];
  String decimalPart = parts[1];

  decimalPart = decimalPart.replaceAll(RegExp(r'0+$'), '');

  if (decimalPart.isEmpty) {
    return integerPart;
  }

  return '$integerPart.$decimalPart';
}

void main() {
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('');
  } else {
    print(removeTrailingZeros(input.trim()));
  }
}
