import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget buildStyleButton(String label, String imagePath, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0), // Отступ снизу на 16 пикселей
    child: SizedBox(
      width: 300, // Ограничение ширины виджета до 300
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Белый фон кнопки
          foregroundColor: const Color(0xFF2457D5), // Цвет текста и иконки
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ), // Закругленные углы кнопки только справа
          ),
          shadowColor: Colors.transparent,
          padding: EdgeInsets.zero, // Убирает отступы внутри кнопки
        ),
        onPressed: onTap,
        child: Row(
          children: [
            // Контейнер с изображением 100x100, без закругленных углов
            Image.asset(
              imagePath,
              width: 100,
              height: 100, // Задает высоту изображения равную высоте кнопки
              fit: BoxFit.cover, // Изображение заполняет контейнер
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0), // Отступы для текста
                child: AutoSizeText(
                  label,
                  maxLines: 2, // Ограничение в две строки
                  softWrap: true, // Включение мягкой обертки
                  overflow: TextOverflow.ellipsis, // Добавляет троеточие, если текст не помещается
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF2457D5), // Цвет текста
                    fontSize: 16,
                  ),
                  minFontSize: 12, // Минимальный размер шрифта
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}