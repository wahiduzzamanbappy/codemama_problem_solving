import 'dart:io';

void main() {
  String? input = stdin.readLineSync();

  List<int> numbers = input!.split(' ').map(int.parse).toList();

  int? l1 = numbers[0];
  int? r1 = numbers[1];
  int? l2 = numbers[2];
  int? r2 = numbers[3];

  numberRange(l1, r1, l2, r2);
}

void numberRange(int l1, int r1, int l2, int r2) {
  if (l2 < l1) l2 = l1;
  if (r2 > r1) r2 = r1;

  List<int> firstSegment = [];
  List<int> secondSegment = [];

  for (int i = l1; i < l2; i++) {
    firstSegment.add(i);
  }

  for (int i = r2 + 1; i <= r1; i++) {
    secondSegment.add(i);
  }

  print("${firstSegment.join(' ')} ${secondSegment.join(' ')}");
}
