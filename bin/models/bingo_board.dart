class BingoBoard {
  final List<List<int>> numbers;
  final List<List<bool>> _isMarked =
      List.generate(5, (_) => List.generate(5, (_) => false));
  int? _winningNumber;

  BingoBoard({required this.numbers});

  factory BingoBoard.fromString(String boardString) {
    final numbers = boardString.split('\n').map((row) {
      return row.trim().split(RegExp(r'\s+')).map((cell) {
        return int.parse(cell);
      }).toList();
    }).toList();

    return BingoBoard(numbers: numbers);
  }

  void _markNumber(int number) {
    for (var i = 0; i < 5; i++) {
      for (var j = 0; j < 5; j++) {
        if (numbers[i][j] == number) {
          _isMarked[i][j] = true;
        }
      }
    }
  }

  bool _hasWon() {
    for (var i = 0; i < 5; i++) {
      var winner = true;
      for (var j = 0; j < 5; j++) {
        if (!_isMarked[i][j]) {
          winner = false;
          break;
        }
      }
      if (winner) {
        return true;
      }
    }

    for (var i = 0; i < 5; i++) {
      var winner = true;
      for (var j = 0; j < 5; j++) {
        if (!_isMarked[j][i]) {
          winner = false;
          break;
        }
      }
      if (winner) {
        return true;
      }
    }

    return false;
  }

  bool drawNumber(int number) {
    _markNumber(number);
    if (_hasWon()) {
      _winningNumber = number;
      return true;
    }

    return false;
  }

  int get score {
    var score = 0;

    for (var i = 0; i < 5; i++) {
      for (var j = 0; j < 5; j++) {
        if (!_isMarked[i][j]) {
          score += numbers[i][j];
        }
      }
    }

    return score * (_winningNumber ?? 0);
  }

  @override
  String toString() {
    return numbers.map((row) {
      return row.join(' ');
    }).join('\n');
  }
}
