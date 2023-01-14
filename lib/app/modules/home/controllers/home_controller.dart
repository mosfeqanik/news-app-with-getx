import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/memory_management.dart';
import '../../../utils/shared_pref_keys.dart';
import '../get_topheadline_model.dart';
import '../providers/topheadlines_provider.dart';

class HomeController extends GetxController {
  TopheadlinesProvider topheadlinesProvider = TopheadlinesProvider();
  var getTopHeadlines = GetTopHeadline().obs;
  var isLoading = false.obs;
  final fireStore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  var userEmail =
      SharedPreferencesRepository.getString(SharedPrefKeys.userEmail);

  loadData() {
    getTopHeadLines();
  }

  getTopHeadLines() async {
    isLoading.value = true;
    final String responseBody = await topheadlinesProvider.getTopHeadlines();
    getTopHeadlines.value = GetTopHeadline.fromJson(jsonDecode(responseBody));
    isLoading.value = false;
  }

  logout() {
    SharedPreferencesRepository.clear();
    SharedPreferencesRepository.clear();
    auth.signOut();
    Get.offNamed(Routes.LOGIN);
  }

  sendBookMarkedCollection({
    String? authorName,
    String? heading,
    String? publishedTime,
    String? imageString,
    String? user,
  }) {
    fireStore.collection('bookmarkedNews').add({
      'authorName': authorName,
      'heading': heading,
      'imagestring': imageString,
      'publishedTime': publishedTime,
      'user': user,
    });
    Get.snackbar("Bookmarked", "Successfully", backgroundColor: Colors.green);
  }
}
