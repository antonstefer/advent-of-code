class BingoBoard {
  final List<List<int>> numbers;

  BingoBoard({required this.numbers});

  factory BingoBoard.fromString(String boardString) {
    final numbers = boardString.split('\n').map((row) {
      return row.trim().split(RegExp(r'\s+')).map((cell) {
        return int.parse(cell);
      }).toList();
    }).toList();

    return BingoBoard(numbers: numbers);
  }

  @override
  String toString() {
    return numbers.map((row) {
      return row.join(' ');
    }).join('\n');
  }
}
