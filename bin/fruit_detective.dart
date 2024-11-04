import 'dart:io';

void main() {
  int fruitId = int.parse(stdin.readLineSync()!);
  stdout.write('');

  Map<int, String> fruitList = {
    31231: 'Banana',
    43861: 'Elderberry',
    82678: 'Honeydew Melon',
    23456: 'Apple',
    78901: 'Mango',
    98765: 'Nectarine',
    45678: 'Orange',
    67890: 'Raspberry',
    21098: 'Tangerine',
  };
  if (fruitList.containsKey(fruitId)) {
    print(fruitList[fruitId]);
  } else {
    print('Invalid Fruit ID.');
  }
}
