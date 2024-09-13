import 'package:flutter/material.dart';
import 'package:fry_lab/widgets/text/TextWithSelectedImage.dart';

// Инпут текст с заголовком
Widget buildParamInput(
    String title,
    String hint,
    String leftIconUrl,
    VoidCallback onImageTap
    ) {
  return ConstrainedBox(
    constraints: const BoxConstraints(
      maxHeight: 150, // Ограничиваем максимальную высоту
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTextWithSelectedImage(title, leftIconUrl, onImageTap),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.black54), // Цвет бордера для обычного состояния
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Color(0xFF2457D5), width: 2.0), // Цвет бордера при фокусе
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.red, width: 2.0), // Цвет бордера при ошибке
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.purple), // Цвет бордера при фокусе и ошибке
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    ),
  );
}