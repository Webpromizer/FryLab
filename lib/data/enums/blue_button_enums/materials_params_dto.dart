class MaterialsParamsDto {
  final String titleImgPath;
  final String title;

  const MaterialsParamsDto._internal(this.titleImgPath, this.title);
  static const String _baseImgPath = "assets/images/styles/materials/";

  static const MaterialsParamsDto style1 = MaterialsParamsDto._internal("${_baseImgPath}aluminum.jpg", "Aluminum");
  static const MaterialsParamsDto style2 = MaterialsParamsDto._internal("${_baseImgPath}brick.jpg", "Brick");
  static const MaterialsParamsDto style3 = MaterialsParamsDto._internal("${_baseImgPath}bronze.jpg", "Bronze");
  static const MaterialsParamsDto style4 = MaterialsParamsDto._internal("${_baseImgPath}cardboard.jpg", "Cardboard");
  static const MaterialsParamsDto style5 = MaterialsParamsDto._internal("${_baseImgPath}ceramic.jpg", "Ceramic");
  static const MaterialsParamsDto style6 = MaterialsParamsDto._internal("${_baseImgPath}cotton.jpg", "Cotton");
  static const MaterialsParamsDto style7 = MaterialsParamsDto._internal("${_baseImgPath}fabric.jpg", "Fabric");
  static const MaterialsParamsDto style8 = MaterialsParamsDto._internal("${_baseImgPath}foil.jpg", "Foil");
  static const MaterialsParamsDto style9 = MaterialsParamsDto._internal("${_baseImgPath}gold.jpg", "Gold");
  static const MaterialsParamsDto style10 = MaterialsParamsDto._internal("${_baseImgPath}leather.jpg", "Leather");
  static const MaterialsParamsDto style11 = MaterialsParamsDto._internal("${_baseImgPath}nickel.jpg", "Nickel");
  static const MaterialsParamsDto style12 = MaterialsParamsDto._internal("${_baseImgPath}nylon.jpg", "Nylon");
  static const MaterialsParamsDto style13 = MaterialsParamsDto._internal("${_baseImgPath}paper.jpg", "Paper");
  static const MaterialsParamsDto style14 = MaterialsParamsDto._internal("${_baseImgPath}plastic.jpg", "Plastic");
  static const MaterialsParamsDto style15 = MaterialsParamsDto._internal("${_baseImgPath}quartz.jpg", "Quartz");
  static const MaterialsParamsDto style16 = MaterialsParamsDto._internal("${_baseImgPath}sharink_wrap.jpg", "Sharink Wrap");
  static const MaterialsParamsDto style17 = MaterialsParamsDto._internal("${_baseImgPath}skin.jpg", "Skin");
  static const MaterialsParamsDto style18 = MaterialsParamsDto._internal("${_baseImgPath}wooden.jpg", "Wooden");
  static const MaterialsParamsDto style19 = MaterialsParamsDto._internal("${_baseImgPath}yarn.jpg", "Yarn");

  static const List<MaterialsParamsDto> values = [
    style1, style2, style3, style4, style5, style6, style7, style8, style9,
    style10, style11, style12, style13, style14, style15, style16, style17,
    style18, style19,
  ];
}