import '../math.dart';
import '../utility.dart';

void five() {
  final input = readBinaryNumbersFromFile('input/5.txt');
  print('The input legth is ${input.length}');
  final mostCommon = findMostCommonBits(input);
  print('The most common bits are: $mostCommon');
  final leastCommon = invertBinary(mostCommon);
  print('The least common bits are: $leastCommon');
  final gamma = binaryToDecimal(mostCommon);
  print('The gamma value is: $gamma');
  final epsilon = binaryToDecimal(leastCommon);
  print('The epsilon value is: $epsilon');
  final powerConsmption = gamma * epsilon;
  print('The power consumption is: $powerConsmption');
}
