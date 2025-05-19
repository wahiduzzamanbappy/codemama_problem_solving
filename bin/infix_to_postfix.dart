import 'dart:io';

int precedence(String op) {
  if (op == '+' || op == '-') return 1;
  if (op == '*' || op == '/') return 2;
  return 0;
}

bool isOperator(String ch) {
  return "+-*/".contains(ch);
}

String infixToPostfix(String expr) {
  List<String> stack = [];
  StringBuffer result = StringBuffer();

  for (int i = 0; i < expr.length; i++) {
    String ch = expr[i];

    if (ch == ' ') continue;

    if (RegExp(r'[0-9]').hasMatch(ch)) {
      result.write(ch);
    } else if (ch == '(') {
      stack.add(ch);
    } else if (ch == ')') {
      while (stack.isNotEmpty && stack.last != '(') {
        result.write(stack.removeLast());
      }
      if (stack.isNotEmpty && stack.last == '(') {
        stack.removeLast(); // Remove '('
      }
    } else if (isOperator(ch)) {
      while (stack.isNotEmpty &&
          precedence(ch) <= precedence(stack.last) &&
          stack.last != '(') {
        result.write(stack.removeLast());
      }
      stack.add(ch);
    }
  }

  while (stack.isNotEmpty) {
    result.write(stack.removeLast());
  }

  return result.toString();
}

void main() {
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('');
  } else {
    String result = infixToPostfix(input.trim());
    print(result);
  }
}
