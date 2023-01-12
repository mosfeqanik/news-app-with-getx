import 'package:get/get.dart';

import '../topheadlines_model.dart';

class TopheadlinesProvider extends GetConnect {

  Future<GetTopHeadlines?> getTopheadlines(int id) async {
    final response = await get('topheadlines/$id');
    return response.body;
  }

}
