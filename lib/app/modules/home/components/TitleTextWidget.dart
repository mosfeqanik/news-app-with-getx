import 'package:flutter/material.dart';

import '../../../theme/themes.dart';
class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, this.tittle}) : super(key: key);

  final String? tittle;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$tittle",
      style: Themes.ListtileTittleTextStyle,
    );
  }
}
