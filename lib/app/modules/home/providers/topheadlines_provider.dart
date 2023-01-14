import 'package:get/get.dart';
import 'package:news_app_with_getx/app/utils/APIs.dart';


class TopheadlinesProvider extends GetConnect {

  Future<String> getTopHeadlines() async {
    final response = await get(APIs.TopHeadlines);
    if (response.status.hasError) {
      return Future.error(response.bodyString!);
    } else {
      return response.bodyString!;
    }
  }


}
