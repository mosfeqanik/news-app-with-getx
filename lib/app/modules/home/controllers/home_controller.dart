import 'package:get/get.dart';

import '../../../utils/memory_management.dart';
import '../providers/topheadlines_provider.dart';
import '../topheadlines_model.dart';

class HomeController extends GetxController {


  TopheadlinesProvider topheadlinesProvider =TopheadlinesProvider();
  var getTopHeadlines = GetTopHeadlines().obs;

  getTopheadLines(){

  }
  logout(){
    SharedPreferencesRepository.clear();
  }
}
