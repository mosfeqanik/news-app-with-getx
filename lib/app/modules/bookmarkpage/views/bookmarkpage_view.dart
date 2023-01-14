import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/common_function.dart';
import '../../home/components/listTileWidget.dart';
import '../controllers/bookmarkpage_controller.dart';

class BookmarkpageView extends GetView<BookmarkpageController> {
  BookmarkpageController controller = Get.put(BookmarkpageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookmarkpageView'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: controller.BookmarkStreams,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          return SizedBox(
            height: 700,
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                controller.data = document.data() as Map<String, dynamic>;

                String? user = controller.data?['user'];

                if (user == controller.userEmail) {
                  String? heading = controller.data?['heading'];
                  String? imageString = controller.data?['imageString'];
                  String? publishedTime = controller.data?['publishedTime'];
                  String? date =
                      dateformaterFuncDate(inputString: publishedTime ?? "");
                  String? authorName = controller.data?['authorName'];
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFF000000),
                          width: 0.5,
                          style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ), //BorderRadius.all
                    ),
                    child: ListTileWidget(
                      author: authorName,
                      tittle: heading,
                      date: date,
                      imgURL: imageString,
                    ),
                  );
                } else
                  return Container();
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
