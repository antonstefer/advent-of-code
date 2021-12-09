import 'submarine_command.dart';

class Submarine {
  int _horizontal, _depth;

  Submarine({
    int? horizontal,
    int? depth,
  })  : _horizontal = horizontal ?? 0,
        _depth = depth ?? 0;

  void execute(SubmarineCommand command) {
    switch (command.direction) {
      case Direction.up:
        _depth -= command.magnitude;
        break;
      case Direction.down:
        _depth += command.magnitude;
        break;
      case Direction.forward:
        _horizontal += command.magnitude;
        break;
    }
  }

  int get horizontal => _horizontal;

  int get depth => _depth;
}
