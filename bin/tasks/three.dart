import '../models/submarine.dart';
import '../utility.dart';

void three() {
  final input = readSubmarineCommandsFromFile('input/3.txt');
  final submarine = Submarine();
  for (final command in input) {
    submarine.execute(command);
  }
  print(submarine.status);
}
