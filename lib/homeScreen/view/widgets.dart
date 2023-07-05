import 'package:audio_mela/constant/responsive.dart';
import 'package:flutter/material.dart';

import '../../constant/styles.dart';

Widget bookImage(image) {
  return Container(
    child: Image.asset(image),
    height: 35.0.hp,
    width: 60.0.wp,
  );
}

Widget bookDetails(context) {
  return Container(
    // color: Colors.amber,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(left: 22.0.sp),
    child: Padding(
      padding: EdgeInsets.all(10.0.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Harry Potter and the Sorcer...",
            style: formhintstyle.copyWith(fontSize: 14.0.sp),
          ),
          Text(
            "J.K. Rowling",
            style: formhintstyle.copyWith(fontSize: 10.0.sp),
          ),
        ],
      ),
    ),
  );
}
