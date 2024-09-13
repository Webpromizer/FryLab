class LightingParamsDto {
  final String titleImgPath;
  final String title;

  const LightingParamsDto._internal(this.titleImgPath, this.title);
  static const String _baseImgPath = "assets/images/styles/lighting/";

  static const LightingParamsDto style1 = LightingParamsDto._internal("${_baseImgPath}accent_lighting.jpg", "Accent Lighting");
  static const LightingParamsDto style2 = LightingParamsDto._internal("${_baseImgPath}backlight.jpg", "Backlight");
  static const LightingParamsDto style3 = LightingParamsDto._internal("${_baseImgPath}blacklight.jpg", "Blacklight");
  static const LightingParamsDto style4 = LightingParamsDto._internal("${_baseImgPath}blinding_light.jpg", "Blinding Light");
  static const LightingParamsDto style5 = LightingParamsDto._internal("${_baseImgPath}candlelight.jpg", "Candlelight");
  static const LightingParamsDto style6 = LightingParamsDto._internal("${_baseImgPath}concert_lighting.jpg", "Concert Lighting");
  static const LightingParamsDto style7 = LightingParamsDto._internal("${_baseImgPath}crepuscular_rays.jpg", "Crepuscular Rays");
  static const LightingParamsDto style8 = LightingParamsDto._internal("${_baseImgPath}direct_sunlight.jpg", "Direct Sunlight");
  static const LightingParamsDto style9 = LightingParamsDto._internal("${_baseImgPath}dusk.jpg", "Dusk");
  static const LightingParamsDto style10 = LightingParamsDto._internal("${_baseImgPath}edison_bulb.jpg", "Edison Bulb");
  static const LightingParamsDto style11 = LightingParamsDto._internal("${_baseImgPath}electric_arc.jpg", "Electric Arc");
  static const LightingParamsDto style12 = LightingParamsDto._internal("${_baseImgPath}fire.jpg", "Fire");
  static const LightingParamsDto style13 = LightingParamsDto._internal("${_baseImgPath}fluorescent.jpg", "Fluorescent");
  static const LightingParamsDto style14 = LightingParamsDto._internal("${_baseImgPath}glowing.jpg", "Glowing");
  static const LightingParamsDto style15 = LightingParamsDto._internal("${_baseImgPath}glowing_radioactively.jpg", "Glowing Radioactively");
  static const LightingParamsDto style16 = LightingParamsDto._internal("${_baseImgPath}glowstick.jpg", "Glowstick");
  static const LightingParamsDto style17 = LightingParamsDto._internal("${_baseImgPath}lava_glow.jpg", "Lava Glow");
  static const LightingParamsDto style18 = LightingParamsDto._internal("${_baseImgPath}moonlight.jpg", "Moonlight");
  static const LightingParamsDto style19 = LightingParamsDto._internal("${_baseImgPath}natural_lighting.jpg", "Natural Lighting");
  static const LightingParamsDto style20 = LightingParamsDto._internal("${_baseImgPath}neon_lamp.jpg", "Neon Lamp");
  static const LightingParamsDto style21 = LightingParamsDto._internal("${_baseImgPath}nightclub_lighting.jpg", "Nightclub Lighting");
  static const LightingParamsDto style22 = LightingParamsDto._internal("${_baseImgPath}nuclear_waste_glow.jpg", "Nuclear Waste Glow");
  static const LightingParamsDto style23 = LightingParamsDto._internal("${_baseImgPath}quantum_dot_display.jpg", "Quantum Dot Display");
  static const LightingParamsDto style24 = LightingParamsDto._internal("${_baseImgPath}spotlight.jpg", "Spotlight");
  static const LightingParamsDto style25 = LightingParamsDto._internal("${_baseImgPath}strobe.jpg", "Strobe");
  static const LightingParamsDto style26 = LightingParamsDto._internal("${_baseImgPath}sunlight.jpg", "Sunlight");
  static const LightingParamsDto style27 = LightingParamsDto._internal("${_baseImgPath}ultraviolet.jpg", "Ultraviolet");

  static const List<LightingParamsDto> values = [
    style1, style2, style3, style4, style5, style6, style7, style8, style9,
    style10, style11, style12, style13, style14, style15, style16, style17,
    style18, style19, style20, style21, style22, style23, style24, style25,
    style26, style27
  ];
}
