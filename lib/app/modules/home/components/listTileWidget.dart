import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_with_getx/app/modules/home/components/subtittleWidget.dart';

import 'NoImageWigdet.dart';
import 'TitleTextWidget.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {Key? key, this.tittle, this.date, this.imgURL, this.author})
      : super(key: key);
  final String? tittle;
  final String? imgURL;
  final String? date;
  final String? author;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 40.w,
        child:
            imgURL != null ? Image.network("${imgURL}") : const NoImageWigdet(),
      ),
      title: TitleTextWidget(tittle: tittle),
      subtitle: SubTittleWidget(
        isBtnShowm: false,
        date: date,
        author: author,
      ),
    );
  }
}
