import 'dart:io';

void main() {
  // Part 1: String Manipulation
  String originalString = "Hello, Dart!";
  String concatenatedString = originalString + " Welcome to Dart programming.";
  String interpolatedString = "$originalString It's great to have you here!";
  String substring = originalString.substring(7, 11);
  String reversedString = originalString.split('').reversed.join('');
  int lengthOfString = originalString.length;

  print('Original String: $originalString');
  print('Concatenated String: $concatenatedString');
  print('Interpolated String: $interpolatedString');
  print('Substring (7, 11): $substring');
  print('Reversed String: $reversedString');
  print('Length of String: $lengthOfString');

  String upperCaseString = originalString.toUpperCase();
  String lowerCaseString = originalString.toLowerCase();
  print('Uppercase String: $upperCaseString');
  print('Lowercase String: $lowerCaseString');

  // Part 2: Collections
  List<String> list = ['apple', 'banana', 'cherry'];
  Set<String> set = {'apple', 'banana', 'cherry'};
  Map<String, int> map = {'apple': 3, 'banana': 2, 'cherry': 5};

  print('List before modification: $list');
  list.add('date');
  list.remove('banana');
  print('List after modification: $list');

  print('Set before modification: $set');
  set.add('date');
  set.remove('banana');
  print('Set after modification: $set');

  print('Map before modification: $map');
  map['date'] = 4;
  map.remove('banana');
  print('Map after modification: $map');

  // Part 3: File Handling
  String filePath = 'example.txt';
  String newFilePath = 'new_example.txt';

  try {
    // Writing to a file
    File(filePath).writeAsStringSync('Hello, Dart file operations!');
    print('File written successfully.');

    // Reading from a file
    String fileContent = File(filePath).readAsStringSync();
    print('File content: $fileContent');

    // Writing to another file
    File(newFilePath).writeAsStringSync(fileContent + ' Appended data.');
    print('New file created and data written successfully.');
  } catch (e) {
    print('Error during file operations: $e');
  }

  // Part 4: Date and Time
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 10));
  DateTime pastDate = now.subtract(Duration(days: 10));
  Duration difference = futureDate.difference(pastDate);

  print('Current Date and Time: $now');
  print('Future Date (10 days later): $futureDate');
  print('Past Date (10 days earlier): $pastDate');
  print('Difference between future and past date: ${difference.inDays} days');

  // Part 5: Combined Application
  String userInput = 'Hello, Dart user!';
  List<String> dataList = [];

  // Manipulate string
  String manipulatedString = userInput.toUpperCase();
  dataList.add(manipulatedString);

  // Save to file
  String logFilePath = 'log.txt';
  try {
    File(logFilePath).writeAsStringSync('Entry at $now: $manipulatedString\n', mode: FileMode.append);
    print('Log entry added.');
  } catch (e) {
    print('Error during logging: $e');
  }

  print('Data stored in list: $dataList');
}
