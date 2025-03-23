/*
import 'dart:io';

int evaluatePostfix(String expression) {
  List<int> stack = [];

  for (int i = 0; i < expression.length; i++) {
    String token = expression[i];

    if (_isOperand(token)) {
      stack.add(int.parse(token));
    } else if (_isOperator(token)) {
      if (stack.length < 2) {
        throw ArgumentError(
            "Invalid expression. Not enough operands for operator.");
      }
      int operand1 = stack.removeLast();
      int operand2 = stack.removeLast();
      int result = _applyOperator(token, operand1, operand2);
      stack.add(result);
    } else {
      throw ArgumentError("Invalid character encountered: $token");
    }
  }
  return stack.last;
}

bool _isOperand(String token) {
  return int.tryParse(token) != null;
}

bool _isOperator(String token) {
  return token == '+' || token == '-' || token == '*' || token == '/';
}

int _applyOperator(String operator, int operand1, int operand2) {
  switch (operator) {
    case '+':
      return operand1 + operand2;
    case '-':
      return operand1 - operand2;
    case '*':
      return operand1 * operand2;
    case '/':
      return operand1 ~/ operand2;
    default:
      throw ArgumentError("Unsupported operator: $operator");
  }
}

void main() {
  String expression = stdin.readLineSync()!;

  try {
    int result = evaluatePostfix(expression);
    print(result);
  } catch (e) {
    print(e);
  }
}
*/

import 'dart:io';

int evaluatePostfix(String expression) {
  List<int> stack = [];

  for (int i = 0; i < expression.length; i++) {
    String token = expression[i];

    if (_isOperand(token)) {
      stack.add(int.parse(token));
    } else if (_isOperator(token)) {
      if (stack.length < 2) {
        throw ArgumentError(
            "Invalid expression. Not enough operands for operator.");
      }
      int operand2 = stack.removeLast();
      int operand1 = stack.removeLast();
      int result = _applyOperator(token, operand1, operand2);
      stack.add(result);
    } else {
      throw ArgumentError("Invalid character encountered: $token");
    }
  }

  if (stack.length != 1) {
    throw ArgumentError("Invalid postfix expression.");
  }
  return stack.last;
}

bool _isOperand(String token) {
  return int.tryParse(token) != null;
}

bool _isOperator(String token) {
  return token == '+' || token == '-' || token == '*' || token == '/';
}

int _applyOperator(String operator, int operand1, int operand2) {
  switch (operator) {
    case '+':
      return operand1 + operand2;
    case '-':
      return operand1 - operand2;
    case '*':
      return operand1 * operand2;
    case '/':
      return operand1 ~/ operand2;
    default:
      throw ArgumentError("Unsupported operator: $operator");
  }
}

void main() {
  print("Enter a Postfix Expression:");
  String expression = stdin.readLineSync()!;

  try {
    int result = evaluatePostfix(expression);
    print("Result: $result");
  } catch (e) {
    print("Error: $e");
  }
}
