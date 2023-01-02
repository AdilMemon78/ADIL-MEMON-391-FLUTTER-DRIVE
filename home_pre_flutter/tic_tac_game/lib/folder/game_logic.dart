class player {
  static const x = "x";
  static const o = "o";
  static const empty = "";
}

class Game {
  static final borthlenth = 9;
  static final blocsize = 100;
  List<String>? board;

  List<String>? initGameBord() =>
      List.generate(borthlenth, (index) => player.empty);
}
