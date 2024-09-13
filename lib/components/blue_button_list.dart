import 'package:flutter/material.dart';
import 'package:fry_lab/components/blue_styles_params.dart';
import 'package:fry_lab/core/bottomsheet/bottom_sheet_utils.dart';
import 'package:fry_lab/data/enums/blue_button_params_dto.dart';
import '../widgets/button/blue_button.dart';

List<Widget> buildBlueButtons(BuildContext buildContext) {
  return [
    const SizedBox(height: 20),
    Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          buildBlueButton(BlueButtonParamsDto.stylize.title,
              BlueButtonParamsDto.stylize.titleImgPath, () {
            showBottomStyles(buildContext, buildStylesStyles(buildContext));
          }),
          buildBlueButton(BlueButtonParamsDto.lighting.title,
              BlueButtonParamsDto.lighting.titleImgPath, () {
            showBottomStyles(buildContext, buildLightingStyles(buildContext));
          }),
          buildBlueButton(BlueButtonParamsDto.camera.title,
              BlueButtonParamsDto.camera.titleImgPath, () {
            showBottomStyles(buildContext, buildCameraStyles(buildContext));
          }),
          buildBlueButton(BlueButtonParamsDto.artists.title,
              BlueButtonParamsDto.artists.titleImgPath, () {
            showBottomStyles(buildContext, buildArtistsStyles(buildContext));
          }),
          buildBlueButton(BlueButtonParamsDto.colors.title,
              BlueButtonParamsDto.colors.titleImgPath, () {
            showBottomStyles(buildContext, buildColorsStyles(buildContext));
          }),
          buildBlueButton(BlueButtonParamsDto.materials.title,
              BlueButtonParamsDto.materials.titleImgPath, () {
            showBottomStyles(buildContext, buildMaterialsStyles(buildContext));
          }),
        ])
  ];
}
