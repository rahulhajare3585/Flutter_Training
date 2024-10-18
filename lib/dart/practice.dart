import 'dart:io';

void main() {
  int? a;
  a = 10;
  print(a);
  a = 12;
  print(a);
  String name = "Rahul";
  var raman = Human(); // creating a class object
}

class Human {
  int a = 12;
  String name = "Rahul";
  BigInt longValue = BigInt.parse('5764764587457678587');
  double percentage = 99.65;
  num percent = 99.65;
  bool isLogin = false;

  Human() {
    print(longValue);
  }
}
