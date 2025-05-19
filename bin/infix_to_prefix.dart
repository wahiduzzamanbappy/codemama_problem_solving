import 'dart:io';

// int getPrecedence(String op) {
//   if (op == '+' || op == '-') return 1;
//   if (op == '*' || op == '/') return 2;
//   return 0;
// }
//
// bool isOperator(String ch) {
//   return '+-*/'.contains(ch);
// }
//
// String reverseAndSwapBrackets(String expr) {
//   String result = '';
//   for (int i = expr.length - 1; i >= 0; i--) {
//     if (expr[i] == '(') {
//       result += ')';
//     } else if (expr[i] == ')') {
//       result += '(';
//     } else {
//       result += expr[i];
//     }
//   }
//   return result;
// }
//
// String toPostfix(String expr) {
//   List<String> stack = [];
//   String output = '';
//
//   for (int i = 0; i < expr.length; i++) {
//     String ch = expr[i];
//
//     if (RegExp(r'[0-9]').hasMatch(ch)) {
//       output += ch;
//     } else if (ch == '(') {
//       stack.add(ch);
//     } else if (ch == ')') {
//       while (stack.isNotEmpty && stack.last != '(') {
//         output += stack.removeLast();
//       }
//       stack.removeLast(); // remove '('
//     } else if (isOperator(ch)) {
//       while (stack.isNotEmpty && getPrecedence(ch) <= getPrecedence(stack.last)) {
//         output += stack.removeLast();
//       }
//       stack.add(ch);
//     }
//   }
//
//   while (stack.isNotEmpty) {
//     output += stack.removeLast();
//   }
//
//   return output;
// }
//
// String infixToPrefix(String expr) {
//   String reversed = reverseAndSwapBrackets(expr);
//   String postfix = toPostfix(reversed);
//   String prefix = postfix.split('').reversed.join('');
//   return prefix;
// }
//
// void main() {
//   String? input = stdin.readLineSync();
//
//   if (input == null || input.trim().isEmpty) {
//     print('');
//   } else {
//     String result = infixToPrefix(input.trim());
//     print(result);
//   }
// }
import 'dart:io';

int precedence(String op) {
  if (op == '+' || op == '-') return 1;
  if (op == '*' || op == '/') return 2;
  return 0;
}

bool isOperator(String ch) {
  return '+-*/'.contains(ch);
}

String infixToPrefix(String expr) {
  List<String> operators = [];
  List<String> operands = [];

  for (int i = 0; i < expr.length; i++) {
    String ch = expr[i];

    if (ch == ' ') continue;

    if (RegExp(r'[0-9]').hasMatch(ch)) {
      operands.add(ch);
    } else if (ch == '(') {
      operators.add(ch);
    } else if (ch == ')') {
      while (operators.isNotEmpty && operators.last != '(') {
        String op = operators.removeLast();
        String b = operands.removeLast();
        String a = operands.removeLast();
        operands.add(op + a + b);
      }
      operators.removeLast(); // Remove '('
    } else if (isOperator(ch)) {
      while (operators.isNotEmpty &&
          operators.last != '(' &&
          precedence(ch) <= precedence(operators.last)) {
        String op = operators.removeLast();
        String b = operands.removeLast();
        String a = operands.removeLast();
        operands.add(op + a + b);
      }
      operators.add(ch);
    }
  }

  while (operators.isNotEmpty) {
    String op = operators.removeLast();
    String b = operands.removeLast();
    String a = operands.removeLast();
    operands.add(op + a + b);
  }

  return operands.last;
}

void main() {
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('');
  } else {
    String result = infixToPrefix(input.trim());
    print(result);
  }
}
