import 'dart:io';

import 'models/submarine_command.dart';

List<int> readNumbersFromFile(String path) {
  try {
    final result = File(path)
        .readAsStringSync()
        .split('\n')
        .map((s) => int.parse(s))
        .toList();
    return result;
  } on FormatException catch (e) {
    print('Could not read file: $e');
    return [];
  }
}

List<SubmarineCommand> readSubmarineCommandsFromFile(String path) {
  try {
    final result = File(path)
        .readAsStringSync()
        .split('\n')
        .map((s) => SubmarineCommand.fromString(s))
        .toList();
    return result;
  } on FormatException catch (e) {
    print('Could not read file: $e');
    return [];
  }
}
