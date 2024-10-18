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
  print(names);
  tempList.replaceRange(1, 3, [1, 2, 3, 4]);
  print(tempList);
}
