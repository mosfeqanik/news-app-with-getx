import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/common_function.dart';
import '../../../utils/memory_management.dart';
import '../../../utils/shared_pref_keys.dart';
import '../components/NoImageWigdet.dart';
import '../components/TitleTextWidget.dart';
import '../components/subtittleWidget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.loadData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.BOOKMARKPAGE);
              },
              icon: const Icon(Icons.bookmark)),
          IconButton(
              onPressed: () {
                controller.logout();
              },
              icon: const Icon(Icons.settings_power_outlined))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Obx(() => !controller.isLoading.value
              ? ListView.builder(
                  itemCount: controller.getTopHeadlines.value.articles?.length,
                  itemBuilder: (BuildContext context, int index) {
                    String? date = dateformaterFuncDate(
                        inputString: controller.getTopHeadlines.value
                                .articles?[index].publishedAt ??
                            "");
                    return listTile(index, date);
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(
                    color: Colors.lightBlue,
                  ),
                )),
        ),
      ),
    );
  }

  Container listTile(int index, String date) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color(0xFF000000),
            width: 0.5,
            style: BorderStyle.solid),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ), //BorderRadius.all
      ),
      child: ListTile(
        leading: leadingImage(index),
        title: TitleTextWidget(
            tittle: controller.getTopHeadlines.value.articles?[index].title),
        subtitle: SubTittleWidget(
            isBtnShowm: true,
            date: date,
            author: controller.getTopHeadlines.value.articles?[index].author,
            btnFunc: () {
              controller.sendBookMarkedCollection(
                  authorName:
                      controller.getTopHeadlines.value.articles?[index].author,
                  heading:
                      controller.getTopHeadlines.value.articles?[index].title,
                  imageString: controller
                      .getTopHeadlines.value.articles?[index].urlToImage,
                  publishedTime: controller
                      .getTopHeadlines.value.articles?[index].publishedAt,
                  user: controller.userEmail);
            }),
      ),
    );
  }

  SizedBox leadingImage(int index) {
    return SizedBox(
      width: 40.w,
      child: controller.getTopHeadlines.value.articles?[index].urlToImage !=
              null
          ? Image.network(
              "${controller.getTopHeadlines.value.articles?[index].urlToImage}")
          : const NoImageWigdet(),
    );
  }
}
