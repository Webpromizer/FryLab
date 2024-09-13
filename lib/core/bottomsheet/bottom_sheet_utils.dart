import 'package:flutter/material.dart';

void showBottomStyles(BuildContext buildContext, List<Widget> widgets) {
  showModalBottomSheet(
    context: buildContext,
    builder: (context) {
      return _buildBottomSheetContent(widgets, buildContext);
    },
  );
}

Widget _buildBottomSheetContent(
    List<Widget> widgets, BuildContext buildContext) {
  return CustomScrollView(
    slivers: [
      // Верхний отступ
      SliverPadding(
        padding: const EdgeInsets.only(top: 8.0),
        sliver: SliverToBoxAdapter(
          child: Container(height: 0),
        ),
      ),

      // Основной контент
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0), // Отступ между элементами
                child: SizedBox(
                  height: 100, // Фиксированная высота элемента
                  child: widgets[index],
                ),
              );
            },
            childCount: widgets.length,
          ),
        ),
      ),
    ],
  );
}