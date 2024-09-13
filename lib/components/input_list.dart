import 'package:flutter/material.dart';
import 'package:fry_lab/data/enums/main_dropdown_params_dto.dart';
import 'package:fry_lab/data/enums/main_input_params_dto.dart';
import 'package:fry_lab/widgets/dropdown/DropDownWithTitle.dart';
import 'package:fry_lab/widgets/text/ParamInput.dart';

Widget buildInputList(BuildContext buildContext) {
  return GridView.builder(
    shrinkWrap: true, // Позволяет GridView занять только необходимую высоту
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Количество столбцов
      crossAxisSpacing: 8.0, // Промежуток между колонками
      mainAxisSpacing: 8.0, // Промежуток между строками
      childAspectRatio: MediaQuery.of(buildContext).size.width /
          (MediaQuery.of(buildContext).size.height / 3),
    ),
    itemCount:
        MainDropdownParamsDto.values.length + MainInputParamsDto.values.length,
    itemBuilder: (BuildContext context, int index) {
      switch (index) {
        case 0:
        case 1:
        case 2:
          return buildDropDownWithTitle(
              MainDropdownParamsDto.values[index].title,
              MainDropdownParamsDto.values[index].titleImgPath,
              () {},
              buildContext, [
            Text("Item 1"),
            Text("Item 2"),
            Text("Item 3"),
          ]);
        default:
          return ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 200, // Ограничение по максимальной высоте
            ),
            child: buildParamInput(
              MainInputParamsDto.values[index - 3].title,
              MainInputParamsDto.values[index - 3].hint,
              MainInputParamsDto.values[index - 3].titleImgPath,
              () {},
            ),
          );
      }
    },
  );
}
