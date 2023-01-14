import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../utils/memory_management.dart';
import '../../../utils/shared_pref_keys.dart';

class BookmarkpageController extends GetxController {
  late final Stream<QuerySnapshot> BookmarkStreams;
  Map<String, dynamic>? data;
  var userEmail =
  SharedPreferencesRepository.getString(SharedPrefKeys.userEmail);
  @override
  void onInit() {
    BookmarkStreams =
        FirebaseFirestore.instance.collection('bookmarkedNews').snapshots();
    super.onInit();
  }
}
