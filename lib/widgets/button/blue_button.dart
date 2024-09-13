import 'package:flutter/material.dart';

Widget buildBlueButton(String label, String imagePath, VoidCallback onTap) {
  return SizedBox(
    width: 160,
    height: 55,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFE9EEFB),
        foregroundColor: const Color(0xFF2457D5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadowColor: Colors.transparent,
      ),
      onPressed: onTap,
      child: Row(
        children: [
          // Иконка с применением цвета (тинт)
          Image.asset(
            imagePath,
            width: 24,
            height: 24,
            color: const Color(0xFF2457D5), // Указываем цвет тинта
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              label,
              maxLines: 1, // Ограничение в одну строку
              overflow: TextOverflow.ellipsis, // Добавляет троеточие, если текст не помещается
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF2457D5), // Цвет текста
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}