import 'dart:io';

void main() {
  // Read input string
 /* String input = stdin.readLineSync()!;

  // Create a Set to store unique characters
  Set<String> uniqueChars = {};

  // Iterate over each character in the string and add it to the Set
  for (int i = 0; i < input.length; i++) {
    uniqueChars.add(input[i]);
  }

  // Output the number of unique characters
  print(uniqueChars.length);*/
  String input = stdin.readLineSync()!;
  Set<String> uniqChars = {};

  for (int i = 0 ; i < input.length; i++ ) {
    uniqChars.add(input[i]);
  }

  print(uniqChars.length);
}

