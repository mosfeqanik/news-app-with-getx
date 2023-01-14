import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

BoxDecoration headingDecoration() {
  return const BoxDecoration(
      gradient: RadialGradient(colors: [
    Colors.blue,
    Colors.white,
  ]));
}

// dateformatter
String dateformaterFuncDate({required String inputString}) {
  final DateTime inputDateTime;
  if (inputString.isNotEmpty) {
    inputDateTime = DateTime.parse(inputString);
  }else{
    inputDateTime = DateTime.parse("0000-00-00");
  }
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(inputDateTime);
  return formatted;
}
