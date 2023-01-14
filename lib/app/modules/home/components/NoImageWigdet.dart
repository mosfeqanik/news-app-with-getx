import 'package:flutter/material.dart';

import '../../../theme/themes.dart';
class NoImageWigdet extends StatelessWidget {
  const NoImageWigdet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "No Image",
      style: Themes.NotextTextStyle,
    );
  }
}