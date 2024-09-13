import 'package:flutter/material.dart';

void showDropdownMenu(BuildContext context, List<Widget> dropdownItems) {
  final RenderBox renderBox = context.findRenderObject() as RenderBox;
  final Offset buttonPosition = renderBox.localToGlobal(Offset.zero);
  final double buttonHeight = renderBox.size.height;
  final double buttonWidth = renderBox.size.width;

  final overlay = Overlay.of(context);
  OverlayEntry? overlayEntry; // Объявляем переменную до её использования

  // Функция для создания меню
  void createOverlayEntry() {
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: buttonPosition.dx,
        top: buttonPosition.dy + buttonHeight,
        width: buttonWidth,
        child: Material(
          color: Colors.transparent,
          child: Container(
            color: Colors.white, // Добавляем цвет фона для видимости
            child: DropdownMenu(
              items: dropdownItems,
              onDismissed: () {
                // Удалить меню из Overlay
                overlayEntry?.remove();
                overlayEntry = null; // Обнуляем ссылку
              },
            ),
          ),
        ),
      ),
    );

    // Добавляем меню в Overlay
    overlay.insert(overlayEntry!);
  }

  createOverlayEntry();
}

Widget buildDropdownButton(
    String label,
    List<Widget> dropdownItems,
    BuildContext buildContext
    ) {
  return ConstrainedBox(
    constraints: const BoxConstraints(
      minHeight: 48,
      maxHeight: 150, // Устанавливаем высоту кнопки аналогично высоте текстового поля
    ),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent, // Прозрачный фон кнопки
        side: const BorderSide(color: Colors.black54), // Цвет бордера
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // Радиус бордера
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16), // Внутренние отступы
      ),
      onPressed: () => showDropdownMenu(buildContext, dropdownItems),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        // Занимает всю ширину кнопки
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // Размещает элементы по краям
        children: [
          Text(label), // Текст внутри кнопки
          const Icon(Icons.arrow_drop_down, color: Colors.black),
        ],
      ),
    ),
  );
}

class DropdownMenu extends StatelessWidget {
  final List<Widget> items;
  final VoidCallback onDismissed;

  DropdownMenu({required this.items, required this.onDismissed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: items.map((item) {
        return GestureDetector(
          onTap: () {
            // Закрыть меню при выборе элемента
            onDismissed();
          },
          child: item,
        );
      }).toList(),
    );
  }
}