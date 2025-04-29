import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers =
  stdin.readLineSync()!.split(' ').map(int.parse).toSet().toList();

  numbers.sort();

  if (numbers.length != n) {
    print(false);
    return;
  }

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] - numbers[i - 1] != 1) {
      print(false);
      return;
    }
  }
  print(true);
}
