import 'package:get/get.dart';
import 'package:news_app_with_getx/app/routes/app_pages.dart';

import '../../../utils/memory_management.dart';
import '../../../utils/shared_pref_keys.dart';

class SplashController extends GetxController {
  checkTokenAvability() {
    var token = SharedPreferencesRepository.getString(SharedPrefKeys.token);
    if (token == 'DEFAULT_VALUE' || token == '') {
      Get.offNamed(Routes.LOGIN);
    } else {
      Get.offNamed(Routes.HOME);
    }
  }

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 5), checkTokenAvability);
    super.onInit();
  }
}
