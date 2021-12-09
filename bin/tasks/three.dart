import '../models/submarine.dart';
import '../utility.dart';

void three() {
  final input = readSubmarineCommandsFromFile('input/3.txt');
  final submarine = Submarine();
  for (final command in input) {
    submarine.execute(command);
  }
  final output = 'Horizontal: ${submarine.horizontal}\n'
      'Vertical: ${submarine.depth}\n'
      'Product: ${submarine.horizontal * submarine.depth}';
  print(output);
}
