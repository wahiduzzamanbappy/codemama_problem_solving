import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!); // Read N
  List<String> words = []; // Store input words
  List<String> results = []; // Store valid FFT sequences

  for (int i = 0; i < n; i++) {
    words.add(stdin.readLineSync()!);
  }

  // Iterate through the list and find "F-F-T" pattern
  for (int i = 0; i < n - 2; i++) {
    if (words[i][0] == 'F' &&
        words[i + 1][0] == 'F' &&
        words[i + 2][0] == 'T') {
      results.add("${words[i]} ${words[i + 1]} ${words[i + 2]}");
    }
  }

  // Print output
  print(results.length);
  for (String res in results) {
    print(res);
  }
}
