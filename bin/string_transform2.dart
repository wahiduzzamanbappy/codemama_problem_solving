/*
import 'dart:io';

void main() {
  */
/*String input = stdin.readLineSync()!;
  print(input);*//*

  */
/*String toSpaceSeparatedString(String s) {
    const n = 4;
    assert(s.length % n == 0);
    var i = s.length - n;
    while (i > 0) {
      s = s.replaceRange(i, i, ' ');
      i -= n;
    }
    return s;
  }
  print(toSpaceSeparatedString);*//*


  */
/*String originalString = 'Hello, World!';
    String unicodeCodePoint = 'x'; // Unicode code point for a smiling face emoji

    // Inserting a character at a specific position
    String modifiedString = insertChar(originalString, 7, unicodeCodePoint.toString());

    print(modifiedString); // Output: Hello, 😀 World!
  }

  String insertChar(String input, int position, String unicodeCodePoint) {
    String char = String.fromCharCodes(unicodeCodePoint);

    if (position < 0 || position > input.length) {
      throw ArgumentError("Invalid position");
    }

    // Inserting the character at the specified position
    String modifiedString = input.substring(0, position) + char + input.substring(position);

    return modifiedString;
*//*

*/
/*  const string = 'SCADAPartisans';
  print(
    string.indexOf('art'),
  ); // 1
  print(
    string.indexOf(
      RegExp(r'[A-Z][a-z]'),
    ),
  );*//*
 // 0
 */
/* 'Dart'.length;          // 4
  'Dart'.runes.length;    // 4

  var clef = '\u{1D11E}';
  print(clef.length);            // 2
  print(clef.runes.length);*//*

  String input = stdin.readLineSync()!;
  String output = transformString(input);
  print(output); // Output: "abxcxdxef"
 */
/* for (i in transform)

}

 String abc =  transform.toStringAsExponential(1);
  print(abc);*//*



}
String transformString(String s) {
  String result = '';
  for (int i = 0; i < s.length; i++) {
    result += s[i];
    if ((i + 1) % 2 == 0 && i + 1 < s.length - 1) {
      result += 'x';
    }
  }
  return result;
}*/
/*String transformString(String s) {
  // Initialize a StringBuffer to construct the transformed string
  StringBuffer result = StringBuffer();

  for (int i = 0; i < s.length; i++) {
    // Add the current character to the result
    result.write(s[i]);

    // Add 'x' after every two characters, unless it's immediately before the last two
    if ((i + 1) % 2 == 0 && i + 1 < s.length - 1) {
      result.write('x');
    }
  }

  return result.toString();
}*/
import 'dart:io';

/*String transform(String s) {
  List<String> chars = s.split('');
  for (int i = 2; i < chars.length - 1; i += 3) {
    chars.insert(i, 'x');
  }
  return chars.join('');
}*/
String transform(String s) {
  String result = '';
  for (int i = 0; i < s.length; i++) {
    result += s[i];
    if ((i + 1) % 2 == 0 && i + 1 < s.length - 0) {
      result += 'x';
    }
  }
  return result;
}


void main() {
  String input = stdin.readLineSync()!;
  String output = transform(input);
  print(output);
}
