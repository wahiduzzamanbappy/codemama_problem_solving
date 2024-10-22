import 'dart:io';

main() {
  int? W = int.parse(stdin.readLineSync()!);
  int tablePosition = TablePosition(W);
  print(tablePosition);
}
int TablePosition(int W) {
  int tableWidth = 300;
  int remainingSpace = W - tableWidth;
  int tablePosition = remainingSpace ~/ 2;
  return tablePosition;
}
