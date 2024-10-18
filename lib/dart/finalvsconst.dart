void main() {
  print('final vs const');
  final name = 'Raman';
  //name = 'Ramanujan';  //can only be set once.
  final String userName;
  userName = 'Rahul';

  const int num = 10;

  final namesList = [
    'Rahul',
    'Ramesh',
    'Rajan',
  ];

  namesList.add('Rushabh');

  print(namesList);
}
