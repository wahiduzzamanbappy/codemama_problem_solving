/*
import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int data = int.parse(input[0]);
  int count = 0;

  for (int i = 0; i <= data; i++ ) {
    if (input[i] == ' 1'){
    }
    count++;
  }
  print(count);
}
*/

import 'dart:io';

void main() {
  // Read the input
  List<String> input = stdin.readLineSync()!.split(' ');

  // First element is the length of the array
  int data = int.parse(input[0]);

  // Initialize the count of true values (1s)
  int count = 0;

  // Iterate through the array elements
  for (int i = 1; i <= data; i++) {
    if (input[i] == '1') {
      count++;
    }
  }

  // Output the count
  print(count);
}
