enum Direction { up, down, forward }

class SubmarineCommand {
  final Direction direction;
  final int magnitude;

  SubmarineCommand({
    required this.direction,
    required this.magnitude,
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
      magnitude: int.parse(parts[1]),
    );
  }

  @override
  String toString() => '$direction $magnitude';
}
