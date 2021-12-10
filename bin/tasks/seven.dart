import 'dart:io';

import '../models/bingo_game.dart';

void seven() {
  final input = File('input/7.txt').readAsStringSync();
  final bingoGame = BingoGame.fromString(input);
  print(bingoGame.toString());
}
