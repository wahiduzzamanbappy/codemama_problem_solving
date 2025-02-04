import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  var data = input.split(" ");

  int N = int.parse(data[0]);
  int A = int.parse(data[1]);
  int B = int.parse(data[2]);

  print(makeOperation(N, A, B));
}

Object makeOperation(N , A , B) {
  if(A + B < N) return "Yes";
  if(A + B > N) return "No";
  if(A + B == N) return "Yes";

  return 0;
}

