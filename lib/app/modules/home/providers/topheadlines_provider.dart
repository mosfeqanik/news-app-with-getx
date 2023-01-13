import 'dart:convert';

import 'package:get/get.dart';
import 'package:news_app_with_getx/app/utils/APIs.dart';

import '../topheadlines_model.dart';

class TopheadlinesProvider extends GetConnect {

  Future<GetTopHeadlines?> getTopheadlines() async {
    final response = await get(APIs.TopHeadlines);
    return GetTopHeadlines.fromJson(jsonDecode(response.body));
  }

}
