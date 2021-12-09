enum Direction { up, down, forward }

class SubmarineCommand {
  final Direction direction;
  final int value;

  SubmarineCommand({
    required this.direction,
    required this.value,
  });

  factory SubmarineCommand.fromString(String command) {
    final parts = command.split(' ');
    if (parts.length != 2) {
      throw FormatException(
        'Invalid command legth: ${parts.length}. Should be 2.',
      );
    }
    return SubmarineCommand(
      direction: Direction.values.firstWhere(
        (d) => d.toString().split('.')[1] == parts[0],
        orElse: () => throw FormatException('Invalid direction: ${parts[0]}'),
      ),
      value: int.parse(parts[1]),
    );
  }

  @override
  String toString() => '$direction $value';
}
