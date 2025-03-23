import 'dart:io';

bool isBalanced(String s) {
  List<String> stack = [];
  Map<String, String> bracketPairs = {')': '(', '}': '{', ']': '['};

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    if (bracketPairs.containsValue(char)) {
      stack.add(char);
    } else if (bracketPairs.containsKey(char)) {
      if (stack.isEmpty || stack.removeLast() != bracketPairs[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

void main() {
  String input = stdin.readLineSync()!;

  if (isBalanced(input)) {
    print("Brackets are balanced.");
  } else {
    print("Brackets are not balanced.");
  }
}
