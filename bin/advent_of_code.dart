import 'dart:io';

void main(List<String> arguments) {
  final result = readNumbersFromFile('input/1.txt');
  print(result);
}

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
