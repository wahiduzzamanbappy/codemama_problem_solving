import 'dart:io';

void main() {
  // Write your dart code from here
  String input = stdin.readLineSync()!;
  var data = input.split(" ");

  int num1 = int.parse(data[0]);
  String op = data[1];
  int num2 = int.parse(data[2]);

  print(makeOperation(num1, op, num2));
}

int makeOperation(num1 , op , num2) {
  if(op == "+") return num1+num2;
  if(op == "-") return num1-num2;
  if(op == "*") return num1*num2;
  if(op == "/") return num1~/num2;
  return -1;
}

