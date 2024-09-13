class BlueButtonParamsDto {
  final String titleImgPath;
  final String title;

  const BlueButtonParamsDto._internal(this.titleImgPath, this.title);
  static const String _baseImgPath = "assets/images/blue_buttons/";

  static const BlueButtonParamsDto stylize = BlueButtonParamsDto._internal("${_baseImgPath}ic_stylize.png", "Styles");
  static const BlueButtonParamsDto lighting =   BlueButtonParamsDto._internal("${_baseImgPath}ic_lighting.png", "Lighting");
  static const BlueButtonParamsDto camera = BlueButtonParamsDto._internal("${_baseImgPath}ic_camera.png", "Camera");
  static const BlueButtonParamsDto artists = BlueButtonParamsDto._internal("${_baseImgPath}ic_artist.png", "Artists");
  static const BlueButtonParamsDto colors = BlueButtonParamsDto._internal("${_baseImgPath}ic_colors.png", "Colors");
  static const BlueButtonParamsDto materials = BlueButtonParamsDto._internal("${_baseImgPath}ic_materials.png", "Materials");

  static const List<BlueButtonParamsDto> values = [
    stylize,
    lighting,
    camera,
    artists,
    colors,
    materials
  ];
}
