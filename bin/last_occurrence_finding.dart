import 'dart:io';

void main() {
  // Take size of array
  int n = int.parse(stdin.readLineSync()!);

  if (n == 0) {
    print("Element not found");
    return;
  }

  // Take array elements
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  // Take the target value
  int target = int.parse(stdin.readLineSync()!);

  // Find last occurrence
  int index = lastOccurrence(numbers, target);

  // Print the result
  if (index == -1) {
    print("Element not found");
  } else {
    print(index);
  }
}

// Function to find the last occurrence using binary search
int lastOccurrence(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;
  int result = -1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (arr[mid] == target) {
      result = mid;       // Save index
      low = mid + 1;      // Keep looking on the right side
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return result;
}
