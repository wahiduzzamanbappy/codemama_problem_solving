/*
import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  String S = input[0];
  int K = int.parse(input[1]);

  String minimized = minLargeInt(S, K);
  print("Min = $minimized");
}

String minLargeInt(String S, int K) {
  List<String> digits = S.split('');
  int changes = 0;

  for (int i = 0; i < digits.length; i++) {
    if (changes >= K) break;

    if (i == 0 && digits[i] != '1') {
      digits[i] = '1';
      changes++;
    }
    else if (i > 0 && digits[i] != '0') {
      digits[i] = '0';
      changes++;
    }
  }

  return digits.join('');
}
*/
import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  String S = input[0];
  int K = int.parse(input[1]);

  String minimized = minimizeNumber(S, K);
  print("Min = $minimized");
}

String minimizeNumber(String S, int K) {
  List<String> digits = S.split('');
  int changes = 0;

  for (int i = 0; i < digits.length && changes < K; i++) {
    if (i == 0 && digits[i] != '1') {
      digits[i] = '1';
      changes++;
    }
    else if (i > 0 && digits[i] != '0') {
      digits[i] = '0';
      changes++;
    }
  }
  return digits.join('');
}

