import '../math.dart';
import '../utility.dart';

void two() {
  final input = readNumbersFromFile('input/1.txt');
  final result = countIncreasingThreeSums(input);
  print('Total: ${input.length - 3}\nIncreasing: $result');
}
