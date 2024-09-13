import 'package:flutter/material.dart';

Widget buildDropDownItem(String hint, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              readOnly: true, // поле только для чтения
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.grey.shade600,
          ),
        ],
      ),
    ),
  );
}
