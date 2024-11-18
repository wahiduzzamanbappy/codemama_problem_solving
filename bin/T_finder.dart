import 'dart:io';

/*void main() {
  String combinedInput = '';
  for (int i = 0; i < 10; i++) {
    String line = stdin.readLineSync()!;
    combinedInput += line; // Append each line to the combined string
  }
  RegExp regExp = RegExp(r"T");
  Iterable matches = regExp.allMatches(combinedInput);
  int count = matches.length;
  print(" ");
  print(count);
}*/
import 'dart:io';

void main() {
  int count = 0;
    for (int i = 0; i < 10; i++) {
      String input = stdin.readLineSync()!;
    if (input.contains('T')) {
      count++;
    }
  }

  print(count);
}

