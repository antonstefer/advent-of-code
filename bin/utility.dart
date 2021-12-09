import 'dart:io';

import 'models/submarine_command.dart';

List<int> readNumbersFromFile(String path) {
  try {
    final result =
        File(path).readAsLinesSync().map((s) => int.parse(s)).toList();
    return result;
  } on FormatException catch (e) {
    print('Could not read file: $e');
    return [];
  }
}

List<SubmarineCommand> readSubmarineCommandsFromFile(String path) {
  try {
    final result = File(path)
        .readAsLinesSync()
        .map((s) => SubmarineCommand.fromString(s))
        .toList();
    return result;
  } on FormatException catch (e) {
    print('Could not read file: $e');
    return [];
  }
}

List<List<bool>> readBinaryNumbersFromFile(String path) {
  try {
    final result = File(path)
        .readAsLinesSync()
        .map((s) => s.split('').map((c) => c == '1').toList())
        .toList();
    return result;
  } on FormatException catch (e) {
    print('Could not read file: $e');
    return [];
  }
}
