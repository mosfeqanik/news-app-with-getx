import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/themes.dart';
import 'BtnWidget.dart';

class SubTittleWidget extends StatelessWidget {
  const SubTittleWidget({
    Key? key,
    this.author,
    this.btnFunc,
    required this.isBtnShowm,
    required this.date,
  }) : super(key: key);

  final String? date;
  final String? author;
  final bool isBtnShowm;
  final VoidCallback? btnFunc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5.h,
        ),
        Text("Published Time: $date", style: Themes.dateTextStyle),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Author: ${author ?? 'Anonymous'}",
          style: Themes.AuthorTextStyle,
        ),
        isBtnShowm ? BtnWidget(btnFunc: btnFunc) : Container(),
      ],
    );
  }
}
