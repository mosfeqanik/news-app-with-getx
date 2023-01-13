import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_with_getx/app/routes/app_pages.dart';
import '../../../theme/themes.dart';
import '../../../utils/common_function.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      body: Container(
        decoration: headingDecoration(),
        child: Center(
          child: RichText(
            // Controls visual overflow
            overflow: TextOverflow.clip,
            maxLines: 1,
            textScaleFactor: 1,
            text: const TextSpan(
              text: 'Wel',
              style: Themes.richText1TextStyle,
              children: <TextSpan>[
                TextSpan(text: 'Come', style: Themes.richText2TextStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
