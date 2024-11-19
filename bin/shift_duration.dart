import 'dart:io';

/*
void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int  startTime = int.parse(input[0]);
  int endTime = int.parse(input[1]);

 if (startTime => 12) {

 }
}*/

/*
import 'dart:io';

double calculateShiftDuration(double startTime, double endTime) {
  // Ensure startTime and endTime are valid
  if (startTime < 0 || startTime >= 24 || endTime < 0 || endTime >= 24) {
    throw ArgumentError("Start and end times must be between 0 and 23.");
  }

  // Calculate the duration
  double duration;
  if (endTime >= startTime) {
    duration = endTime - startTime;
  } else {
    // Shift crosses midnight
    duration = (24 - startTime) + endTime;
  }

  // Ensure the shift duration does not exceed 24 hours
  if (duration > 24) {
    throw ArgumentError("Shift duration cannot exceed 24 hours.");
  }

  return duration;
}

void main() {
  try {
    // Input start and end times
    stdout.write("Enter the start time (0-23): ");
    double startTime = double.parse(stdin.readLineSync()! "0");
    stdout.write("Enter the end time (0-23): ");
    double endTime = double.parse(stdin.readLineSync() ?? "0");

    // Calculate and print the duration
    double duration = calculateShiftDuration(startTime, endTime);
    print("The shift duration is: $duration hours.");
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}
*/
import 'dart:io';

/*void main() {
  *//*List<String> input = stdin.readLineSync()!.split(' ');
  int startTime = int.parse(input[0]);
  int endTime = int.parse(input[1]);

  int duration = startTime == endTime
      ? 24
      : endTime >= startTime
          ? endTime - startTime
          : (24 - startTime) + endTime;
  print(duration);*//*
  List <String> input = stdin.readLineSync()!.split('');
  int startTime = int.parse(input[0]);
  int endTime = int.parse(input[1]);
  int duration = startTime == endTime? 24 : endTime >= startTime? endTime - startTime : (24 - startTime) + endTime;
  print(duration);
}*/
import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int startTime = int.parse(input[0]);
  int endTime = int.parse(input[1]);

  int duration;

  if (startTime == endTime) {
    // If the start and end times are the same, the duration is 24 hours
    duration = 24;
  } else if (endTime >= startTime) {
    // If the end time is after or at the same time as the start time, calculate the direct difference
    duration = endTime - startTime;
  } else {
    // If the end time is before the start time, calculate across midnight
    duration = (24 - startTime) + endTime;
  }

  print(duration);
}

