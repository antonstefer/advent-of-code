import '../math.dart';
import '../utility.dart';

void one() {
  final input = readNumbersFromFile('input/1.txt');
  final result = countIncreasingNumbers(input);
  print('Total: ${input.length}\nIncreasing: $result');
}
