import 'dart:io';

void main() {
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int start = input[0];
  int end = input[1];

  if (start > end) {
    int temp = start;
    start = end;
    end = temp;
  }
  int sum = 0;
  List<int> oddNumbers = [];

  for (int i = start; i <= end; i++) {
    if (i % 2 != 0) {
      oddNumbers.add(i);
      sum += i;
    }
  }
  print(sum);
}

