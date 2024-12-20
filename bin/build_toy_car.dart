import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> numbers = input.split(' ');
  int numberofWheels = int.parse(numbers[0]);
  int numberofBody = int.parse(numbers[1]);
  int numberofPeople = int.parse(numbers[2]);

  int a = (numberofWheels/4).toInt();
  int b = (numberofBody).toInt();
  int c = (numberofPeople/2).toInt();

  if(a < b && a < c){
    print(a);
  }else if(b<a && b<c){
    print(b);
  }else if(c<a && c < b){
    print(c);
  }

}