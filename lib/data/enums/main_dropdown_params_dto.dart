class MainDropdownParamsDto {
  final String titleImgPath;
  final String title;
  final String hint;
  final bool isArrowVisible;

  const MainDropdownParamsDto._internal(this.titleImgPath, this.title, this.hint, this.isArrowVisible);
  static const String _baseImgPath = "assets/images/inputs/";

  // dropdowns
  static const MainDropdownParamsDto aspectRatio = MainDropdownParamsDto._internal("${_baseImgPath}aspect_ratio.png", "Aspect Ratio", "---", true);
  static const MainDropdownParamsDto version = MainDropdownParamsDto._internal("${_baseImgPath}version.png", "Version", "---", true);
  static const MainDropdownParamsDto quality = MainDropdownParamsDto._internal("${_baseImgPath}quality.png", "Quality", "---", true);

  static const List<MainDropdownParamsDto> values = [
    aspectRatio,
    version,
    quality,
  ];
}
