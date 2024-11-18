import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int productID = int.parse(input[0]);
  int quantity = int.parse(input[1]);

/*  Map<int, int> priceList = {
    101: 10,
    202: 25,
    303: 5,
  };
  priceList.containsKey(productID);
  int price = priceList[productID]!;
  int totalCost = price * quantity;
  print(totalCost);*/
  //int price = -1;
/*switch(productID) {
  case 101 :
  price = 10;
  break;
}
switch(productID) {
  case 202 :
    price = 25;
  break;
}
switch(productID) {
  case 303 :
    price = 5;
  break;
}*/
/*  if (productID == 101) {
    price = 10;
  } else if (productID == 202) {
    price = 25;
  } else if (productID == 303) {
    price = 5;
  }*/
  var productMap = {
    101 : 10,
    202 : 25,
    303 : 5,
  };
  int price = productMap [productID]!;
var totalCost = price * quantity;
print(totalCost);


}