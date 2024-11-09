/*
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
*/

void main () {
  var myList = [1,2,3,4,5,6];
  print(myList);
 /* myList.add(7);
  print(myList);
  myList.addAll([8,9,10]);
  print(myList);*/
  myList.insert(2, 0);
  print(myList);
  myList.insertAll(6, [8,9,10,11,12,13]);
  print(myList);

}
