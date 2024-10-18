void main() {
  //map is used to store multiple data
  // store based on key value pair
  print("Hashmaps");

  var map_name = {
    'Name': 'value1',
    'YearOfExperience': 2,
    'Avg.Rating': '3.0',
    'CanLocateToOffice': true,
  };
  map_name['Name'] = 'Raman';
  print(map_name);
  print(map_name['key4']);

  var mapName = Map();
  mapName["Name"] = "Rahul";
  mapName["YearOfExperience"] = 3;
  mapName["avg.Rating"] = 3.0;
  mapName["CanLocateToOffice"] = true;

  print(mapName);

  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('Name'));
  print(mapName.containsValue(true));
  print(mapName.remove('CanLocateToOffice'));
  print(mapName);
}
