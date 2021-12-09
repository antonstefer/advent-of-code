import 'dart:math';

int countIncreasingNumbers(List<int> input) {
  int count = 0;
  for (int i = 0; i < input.length - 1; i++) {
    if (input[i] < input[i + 1]) {
      count++;
    }
  }
  return count;
}

int countIncreasingThreeSums(List<int> input) {
  int count = 0;
  for (int i = 0; i < input.length - 3; i++) {
    int firstThreeSum = input[i] + input[i + 1] + input[i + 2];
    int secondThreeSum = input[i + 1] + input[i + 2] + input[i + 3];
    if (firstThreeSum < secondThreeSum) {
      count++;
    }
  }
  return count;
}

List<bool> findMostCommonBits(List<List<bool>> input) {
  final rowLength = input[0].length;
  List<int> occurrences = List<int>.filled(rowLength, 0);
  for (final row in input) {
    for (var i = 0; i < rowLength; i++) {
      if (row[i]) {
        occurrences[i]++;
      }
    }
  }
  return occurrences.map((i) => i > input.length ~/ 2).toList();
}

int binaryToDecimal(List<bool> input) {
  int decimal = 0;
  for (int i = 0; i < input.length; i++) {
    if (input[input.length - i - 1]) {
      decimal += pow(2, i) as int;
    }
  }
  return decimal;
}

List<bool> invertBinary(List<bool> input) {
  return input.map((i) => !i).toList();
}
