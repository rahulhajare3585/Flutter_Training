void main() {
  print("Functions in dart");
  var dummyClass = myClass();
  dummyClass.printName();
  dummyClass.printUserName("Raman");
  dummyClass.printUserName("Rahul");
  dummyClass.printUserName("Akash");
  var addition = dummyClass.addition(10, 20);
  print(addition);
  var munltiplication = dummyClass.multiply(10, 20, 30);
  print(munltiplication);
}

class myClass {
  void printName() {
    print("flutter function");
  }

  void printUserName(String name) {
    print(name);
  }

  int addition(int num1, int num2) {
    return num1 + num2;
  }

  int multiply(int num1, int num2, int num3) {
    int? multiplication;
    multiplication = num1 * num2 * num3;
    return multiplication;
  }
}
