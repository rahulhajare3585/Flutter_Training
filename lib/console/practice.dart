import 'dart:io';

void main() {
  print("Welcome in flutter");
  stdout.write("Please Enter Your Name : ");
  var name = stdin.readLineSync(); // read line and convert it in string format
  print("Welcome, $name :)");
}
