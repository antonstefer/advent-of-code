import 'dart:io';

import '../models/bingo_game.dart';

void eight() {
  final input = File('input/7.txt').readAsStringSync();
  final bingoGame = BingoGame.fromString(input);
  final lastWinner = bingoGame.findLastWinner();
  final score = lastWinner?.score ?? 0;
  print('Score: $score');
}
