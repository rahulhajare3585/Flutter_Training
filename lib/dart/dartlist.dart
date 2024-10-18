// collection of data

void main() {
  var tempList = [10, 20, 30, 40];
  tempList.add(50);
  tempList.add(60);

  var names = [];
  names.addAll(tempList);
  names.add("Rahul");
  names.add("Ramesh");
  names.add("Rajesh");

  names.insert(2, "Rajiv");
  names.insertAll(6, tempList);
  print(tempList);
  names[2] = "Ranjan";

  names.removeLast();

  tempList.remove(40);
  names.removeAt(1);
  print(names);
  tempList.replaceRange(1, 3, [1, 2, 3, 4]);
  print(tempList);
  print("Length : ${names.length}");
  print("Reversed : ${names.reversed}");
  print("First : ${names.first}");
  print("Last : ${names.last}");
  print("Empty : ${names.isEmpty}");
  print("Element at 2nd index: ${names.elementAt(2)}");
}
