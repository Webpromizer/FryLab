import 'package:flutter/material.dart';

// Текст с иконкой "Информация", для встраивания в dropDown или Input
Widget buildTextWithSelectedImage(
    String title, String leftIconUrl, VoidCallback onImageTap) {
  return Row(
    children: [
      const SizedBox(width: 4),
      Image.asset(
        leftIconUrl,
        width: 20.0,
        height: 20.0,
        fit: BoxFit.cover,
      ),
      const SizedBox(width: 8),
      Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const SizedBox(width: 8),
      GestureDetector(
        onTap: onImageTap,
        child: Image.asset(
          "assets/images/img_info.png",
          width: 20.0,
          height: 20.0,
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}
