import 'bingo_board.dart';

class BingoGame {
  final List<int> _numbers;
  final List<BingoBoard> _boards;

  BingoGame({
    required List<int> numbers,
    required List<BingoBoard> boards,
  })  : _numbers = numbers,
        _boards = boards;

  factory BingoGame.fromString(String input) {
    final blocks = input.split('\n\n');
    final numberInput = blocks.removeAt(0);
    return BingoGame(
      numbers: numberInput.split(',').map((s) => int.parse(s)).toList(),
      boards: blocks.map((s) => BingoBoard.fromString(s)).toList(),
    );
  }

  BingoBoard? findWinner() {
    for (final number in _numbers) {
      for (final board in _boards) {
        if (board.drawNumber(number)) {
          return board;
        }
      }
    }
  }

  BingoBoard? findLastWinner() {
    BingoBoard? lastWinner;
    final tempBoards = _boards.toList();
    for (final number in _numbers) {
      for (var i = 0; i < tempBoards.length; i++) {
        if (!tempBoards[i].won && tempBoards[i].drawNumber(number)) {
          lastWinner = tempBoards[i];
        }
      }
    }
    return lastWinner;
  }

  @override
  String toString() {
    return '$_numbers\n\n${_boards.join('\n\n')}';
  }
}
