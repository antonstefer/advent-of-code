import 'bingo_board.dart';

class BingoGame {
  final List<int> numbers;
  final List<BingoBoard> boards;

  BingoGame({required this.numbers, required this.boards});

  factory BingoGame.fromString(String input) {
    final blocks = input.split('\n\n');
    final numberInput = blocks.removeAt(0);
    return BingoGame(
      numbers: numberInput.split(',').map((s) => int.parse(s)).toList(),
      boards: blocks.map((s) => BingoBoard.fromString(s)).toList(),
    );
  }

  BingoBoard? findWinner() {
    for (final number in numbers) {
      for (final board in boards) {
        if (board.drawNumber(number)) {
          return board;
        }
      }
    }
  }

  @override
  String toString() {
    return '$numbers\n\n${boards.join('\n\n')}';
  }
}
