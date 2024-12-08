/*import 'dart:io';

void main() {

  List<String> input = stdin.readLineSync()!.split(' ');

  int A = int.parse(input[0]);
  int B = int.parse(input[1]);
  int C = int.parse(input[2]);

  int temp = A;
  B = C;
  C = temp;

  print('$A, $B, $C');
}*/

/*import 'dart:io';

void main() {
  // Read input
  List<String> input = stdin.readLineSync()!.split(' ');

  // Parse values A, B, C
  int A = int.parse(input[0]);
  int B = int.parse(input[1]);
  int C = int.parse(input[2]);

  // Parse the order string
  String order = input[3];

  // Perform swaps using a map
  Map<String, int> values = {'A': A, 'B': B, 'C': C};

  // Swapping process
  int temp = values['A']!;
  values['A'] = values['B']!;
  values['B'] = values['C']!;
  values['C'] = temp;

  // Construct the output based on the order
  String result = order.split('').map((char) => values[char]!).join(' ');

  // Print the result
  print(result);
}*/


import 'dart:io';

void main() {
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  String order = stdin.readLineSync()!;

  int temp = input[1];
  input[1] = input[0];
  input[0] = input[2];
  input[2] = temp;

  for (int i = 0; i < 3; i++) {
    int index = order.codeUnitAt(i) - 'A'.codeUnitAt(0);
    stdout.write(input[index]);
    if (i < 2) {
      stdout.write(' ');
    }
  }
  }
