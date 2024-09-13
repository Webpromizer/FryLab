class CameraParamsDto {
  final String titleImgPath;
  final String title;

  const CameraParamsDto._internal(this.titleImgPath, this.title);
  static const String _baseImgPath = "assets/images/styles/camera/";

  static const CameraParamsDto style1 = CameraParamsDto._internal("${_baseImgPath}360_panorama.jpg", "360 Panorama");
  static const CameraParamsDto style2 = CameraParamsDto._internal("${_baseImgPath}dslr.jpg", "DSLR");
  static const CameraParamsDto style3 = CameraParamsDto._internal("${_baseImgPath}electron_microscope.jpg", "Electron Microscope");
  static const CameraParamsDto style4 = CameraParamsDto._internal("${_baseImgPath}macro_lens.jpg", "Macro Lens");
  static const CameraParamsDto style5 = CameraParamsDto._internal("${_baseImgPath}magnification.jpg", "Magnification");
  static const CameraParamsDto style6 = CameraParamsDto._internal("${_baseImgPath}microscopy.jpg", "Microscopy");
  static const CameraParamsDto style7 = CameraParamsDto._internal("${_baseImgPath}miniature_faking.jpg", "Miniature Faking");
  static const CameraParamsDto style8 = CameraParamsDto._internal("${_baseImgPath}panorama.jpg", "Panorama");
  static const CameraParamsDto style9 = CameraParamsDto._internal("${_baseImgPath}pinhole_lens.jpg", "Pinhole Lens");
  static const CameraParamsDto style10 = CameraParamsDto._internal("${_baseImgPath}satellite_Imagery.jpg", "Satellite Imagery");
  static const CameraParamsDto style11 = CameraParamsDto._internal("${_baseImgPath}super_resolution_microscopy.jpg", "Super Resolution Microscopy");
  static const CameraParamsDto style12 = CameraParamsDto._internal("${_baseImgPath}telephoto_lens.jpg", "Telephoto Lens");
  static const CameraParamsDto style13 = CameraParamsDto._internal("${_baseImgPath}telescope_lens.jpg", "Telescope Lens");
  static const CameraParamsDto style14 = CameraParamsDto._internal("${_baseImgPath}ultra_wide_angle_lens.jpg", "Ultra Wide Angle Lens");
  static const CameraParamsDto style15 = CameraParamsDto._internal("${_baseImgPath}wide_angle_lens.jpg", "Wide Angle Lens");

  static const List<CameraParamsDto> values = [
    style1, style2, style3, style4, style5, style6, style7, style8, style9,
    style10, style11, style12, style13, style14, style15,
  ];
}