import 'dart:io';

void main() {
  // Taking input for array size
  int n = int.parse(stdin.readLineSync()!);

  if (n == 0) {
    print("Element not found");
    return;
  }

  // Taking array elements
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  // Taking the target number

  int target = int.parse(stdin.readLineSync()!);

  // Finding first occurrence
  int index = firstOccurrence(numbers, target);

  // Output the result
  if (index == -1) {
    print("Element not found");
  } else {
    print(index);
  }
}

// Function to find the first occurrence of target
int firstOccurrence(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;
  int result = -1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (arr[mid] == target) {
      result = mid;        // Found the target
      high = mid - 1;      // Check left side for first occurrence
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return result;
}
