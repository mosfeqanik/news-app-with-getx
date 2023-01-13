
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/memory_management.dart';

Future<void> main() async {
  //for widget tree root
  WidgetsFlutterBinding.ensureInitialized();
  // for firebase initialize
  await Firebase.initializeApp();
  // for shared pref initialize
  SharedPreferencesRepository.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (_, c) {
      return GetMaterialApp(
        title: "Application",
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      );
    });
  }
}
