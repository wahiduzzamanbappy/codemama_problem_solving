import 'dart:io';

void main() {
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  Iterable<int> evenNumbers = numbers.where((num) => num % 2 == 0);


  print(evenNumbers.length);
}

