import 'package:audio_mela/constant/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/styles.dart';

Widget bookImage(image) {
  return Container(
    color: Colors.amber,
    child: Image.asset(
      image,
      fit: BoxFit.cover,
    ),
    height: 37.0.hp,
    width: 70.0.wp,
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
            style: formhintstyle.copyWith(fontSize: 16.0.sp),
          ),
          SizedBox(
            height: 0.5.hp,
          ),
          Text(
            "J.K. Rowling",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14.0.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w200)),
          ),
        ],
      ),
    ),
  );
}
