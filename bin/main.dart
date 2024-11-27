import 'dart:io';

main() {
  int? IW = int.parse(stdin.readLineSync()!);
  int leftMargin = calculateLeftMargin(IW);
  print(leftMargin);
}

int calculateLeftMargin(int IW) {
  int containerWidth = 1000;

  if (IW >= containerWidth) {
    return 0;
  }

  int remainingSpace = containerWidth - IW;
  int leftMargin = remainingSpace ~/ 2;
  return leftMargin;
}
