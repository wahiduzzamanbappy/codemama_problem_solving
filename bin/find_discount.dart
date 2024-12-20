import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');

  int originalPrice = int.parse(input[0]);
  int discount = int.parse(input[1]);

  /// Formula: Selling Price = Listed Price × [(100 − discount%) / 100]
  double discountRate = discount / 100;
  double finalPrice = originalPrice * (1 - discountRate);

      print('Price: ${finalPrice.toStringAsFixed(2)}');
}
