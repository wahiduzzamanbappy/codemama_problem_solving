import 'dart:io';

void main() {
  // Read input
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int N = input[0];
  int X = input[1];

  // Calculate total time
  int totalStepTime = N * X;
  int totalRestTime = (N * (N - 1)) ~/ 2;
  int totalTime = totalStepTime + totalRestTime;

  // Print the result
  print(totalTime);
}
