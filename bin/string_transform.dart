
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
}*//*

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
}*/
void main() {
  // Write your dart code from here
  String input = stdin.readLineSync()!;
  String output = transform(input);
  print(output);

}
String transform(String s) {
  String result = '';
 /* for (int i = 0; i < s.length; i++) {
    if ((i + 1) % 3 == 0 && s[i].contains(RegExp(r'[a-zA-Z]'))) {
      // Every third character is alphabetic: convert to uppercase
      result += s[i].toUpperCase();
    } else {
      // Otherwise, add the character as is
      result += s[i];
    }
  }*/
  for (int i = 0; i < s.length; i++) {
    if ((i + 1) % 3 == 0) {
      result += s[i].toUpperCase();
    } else {
      result += s[i];
    }
  }
  return result;
}

