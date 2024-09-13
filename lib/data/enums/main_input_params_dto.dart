class MainInputParamsDto {
  final String titleImgPath;
  final String title;
  final String hint;
  final bool isArrowVisible;

  const MainInputParamsDto._internal(this.titleImgPath, this.title, this.hint, this.isArrowVisible);
  static const String _baseImgPath = "assets/images/inputs/";

  // inputs
  static const MainInputParamsDto stylize = MainInputParamsDto._internal("${_baseImgPath}stylize.png", "Stylize", "0 to 1000", false);
  static const MainInputParamsDto chaos = MainInputParamsDto._internal("${_baseImgPath}chaos.png", "Chaos", "0 to 100", false);
  static const MainInputParamsDto stop = MainInputParamsDto._internal("${_baseImgPath}stop.png", "Stop", "10 to 100", false);
  static const MainInputParamsDto repeat = MainInputParamsDto._internal("${_baseImgPath}repeat.png", "Repeat", "2 to 40", false);
  static const MainInputParamsDto weird = MainInputParamsDto._internal("${_baseImgPath}weird.png", "Weird", "0 to 3000", false);
  static const MainInputParamsDto tile = MainInputParamsDto._internal("${_baseImgPath}tile.png", "Tile", "No", false);
  static const MainInputParamsDto seed = MainInputParamsDto._internal("${_baseImgPath}seed.png", "Seed", "0 to 4294967295", false);
  static const MainInputParamsDto exclude = MainInputParamsDto._internal("${_baseImgPath}exclude.png", "Exclude", "Avoid these terms...", false);

  static const List<MainInputParamsDto> values = [
    stylize,
    chaos,
    stop,
    repeat,
    weird,
    tile,
    seed,
    exclude
  ];
}
