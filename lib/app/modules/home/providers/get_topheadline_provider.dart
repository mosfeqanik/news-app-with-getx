import 'package:get/get.dart';

import '../get_topheadline_model.dart';

class GetTopheadlineProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return GetTopheadline.fromJson(map);
      if (map is List)
        return map.map((item) => GetTopheadline.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<GetTopheadline?> getGetTopheadline(int id) async {
    final response = await get('gettopheadline/$id');
    return response.body;
  }

  Future<Response<GetTopheadline>> postGetTopheadline(
          GetTopheadline gettopheadline) async =>
      await post('gettopheadline', gettopheadline);
  Future<Response> deleteGetTopheadline(int id) async =>
      await delete('gettopheadline/$id');
}
