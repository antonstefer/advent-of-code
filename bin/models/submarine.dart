import 'submarine_command.dart';

class Submarine {
  int _horizontal, _depth, _aim;

  Submarine({
    int? horizontal,
    int? depth,
    int? aim,
  })  : _horizontal = horizontal ?? 0,
        _depth = depth ?? 0,
        _aim = aim ?? 0;

  void execute(SubmarineCommand command) {
    switch (command.direction) {
      case Direction.up:
        _aim -= command.value;
        break;
      case Direction.down:
        _aim += command.value;
        break;
      case Direction.forward:
        _horizontal += command.value;
        _depth += _aim * command.value;
        break;
    }
  }

  int get horizontal => _horizontal;

  int get depth => _depth;

  int get aim => _aim;

  int get product => _horizontal * _depth;

  String get status => 'Horizontal: $horizontal\n'
      'Depth: $depth\n'
      'Aim: $aim\n'
      'Product: $product';
}
