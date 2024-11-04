import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int I = int.parse(input[0]);
  int Q = int.parse(input[1]);

  Map<int, int> priceList = {
    101: 10,
    202: 25,
    303: 5,
  };
  priceList.containsKey(I);
  int price = priceList[I]!;
  int totalCost = price * Q;
  print(totalCost);
}