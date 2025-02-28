import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!.trim());
  List<int> numbers =
  stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();

  // Count frequency of each number while maintaining order
  Map<int, int> freqCounter = {};
  for (int num in numbers) {
    freqCounter[num] = (freqCounter[num] ?? 0) + 1;
  }

  // Sort based on frequency, then order of appearance
  List<MapEntry<int, int>> sortedItems = freqCounter.entries.toList()
    ..sort((a, b) => a.value == b.value
        ? numbers.indexOf(a.key).compareTo(numbers.indexOf(b.key))
        : a.value.compareTo(b.value));

  // Output results
  print(freqCounter.length);
  for (var entry in sortedItems) {
    print('${entry.key} ${entry.value}');
  }
}



