import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({
    Key? key,
    required this.btnFunc,
  }) : super(key: key);

  final VoidCallback? btnFunc;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: btnFunc,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledForegroundColor: Colors.grey.withOpacity(0.38),
        ),
        child: const Text(
          'Bookmark',
          style: TextStyle(fontSize: 10,color: Colors.white),
        ));
  }
}
