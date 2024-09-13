import 'package:flutter/material.dart';
import 'package:fry_lab/data/enums/blue_button_enums/artists_params_dto.dart';
import 'package:fry_lab/data/enums/blue_button_enums/camera_params_dto.dart';
import 'package:fry_lab/data/enums/blue_button_enums/color_params_dto.dart';
import 'package:fry_lab/data/enums/blue_button_enums/lighting_params_dto.dart';
import 'package:fry_lab/data/enums/blue_button_enums/materials_params_dto.dart';
import 'package:fry_lab/data/enums/blue_button_enums/styles_params_dto.dart';
import 'package:fry_lab/widgets/button/style_fields.dart';

List<Widget> buildStylesStyles(BuildContext buildContext) {
  return StylesParamsDto.values.map((param) {
    return buildStyleButton(param.title, param.titleImgPath, () {
      // Действие при нажатии на кнопку
    });
  }).toList();
}

List<Widget> buildLightingStyles(BuildContext buildContext) {
  return LightingParamsDto.values.map((param) {
    return buildStyleButton(param.title, param.titleImgPath, () {
      // Действие при нажатии на кнопку
    });
  }).toList();
}

List<Widget> buildCameraStyles(BuildContext buildContext) {
  return CameraParamsDto.values.map((param) {
    return buildStyleButton(param.title, param.titleImgPath, () {
      // Действие при нажатии на кнопку
    });
  }).toList();
}

List<Widget> buildArtistsStyles(BuildContext buildContext) {
  return ArtistsParamsDto.values.map((param) {
    return buildStyleButton(param.title, param.titleImgPath, () {
      // Действие при нажатии на кнопку
    });
  }).toList();
}

List<Widget> buildColorsStyles(BuildContext buildContext) {
  return ColorParamsDto.values.map((param) {
    return buildStyleButton(param.title, param.titleImgPath, () {
      // Действие при нажатии на кнопку
    });
  }).toList();
}

List<Widget> buildMaterialsStyles(BuildContext buildContext) {
  return MaterialsParamsDto.values.map((param) {
    return buildStyleButton(param.title, param.titleImgPath, () {
      // Действие при нажатии на кнопку
    });
  }).toList();
}
