// Инпут текст с заголовком
import 'package:flutter/material.dart';
import 'package:fry_lab/widgets/button/dropdown_button.dart';
import 'package:fry_lab/widgets/text/TextWithSelectedImage.dart';

Widget buildDropDownWithTitle(
    String title,
    String leftIconUrl,
    VoidCallback onInfoTap,
    BuildContext buildContext,
    List<Widget> dropdownItems,
  ) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTextWithSelectedImage(title, leftIconUrl, onInfoTap),
      buildDropdownButton("---", dropdownItems, buildContext),
      const SizedBox(height: 16),
    ],
  );
}