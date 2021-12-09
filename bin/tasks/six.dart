import '../math.dart';
import '../utility.dart';

void six() {
  final input = readBinaryNumbersFromFile('input/5.txt');
  print('The input legth is ${input.length}');
  final mostCommon = reduceByBitCriteria(input, true);
  print('The most common bits are: $mostCommon');
  final leastCommon = reduceByBitCriteria(input, false);
  print('The least common bits are: $leastCommon');
  final oxygenGeneratorRating = binaryToDecimal(mostCommon);
  print('The oxygen generator rating is: $oxygenGeneratorRating');
  final co2ScrubberRating = binaryToDecimal(leastCommon);
  print('The CO2 scrubber rating is: $co2ScrubberRating');
  final result = oxygenGeneratorRating * co2ScrubberRating;
  print('The result is: $result');
}
