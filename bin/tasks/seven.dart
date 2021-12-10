import 'dart:io';

import '../models/bingo_game.dart';

void seven() {
  final input = File('input/7.txt').readAsStringSync();
  final bingoGame = BingoGame.fromString(input);
  final winner = bingoGame.findWinner();
  final score = winner?.score ?? 0;
  print('Score: $score');
}
