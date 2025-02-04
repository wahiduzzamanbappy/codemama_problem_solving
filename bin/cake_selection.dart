import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  var data = input.split(" ");

  int weight = int.parse(data[0]);
  int sugar = int.parse(data[1]);
  int calories = int.parse(data[2]);

  if (weight >= 200 && weight <= 300 && sugar >= 50 && calories >= 150) {
    print('Yes');
  } else {
    print('No');
  }
}
