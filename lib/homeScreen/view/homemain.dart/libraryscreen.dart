import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Episode/view/episodescreen1.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  List template = [
    "image/Image Placeholder 2 (1).png",
    "image/Image Placeholder 2 (2).png",
    "image/Image Placeholder 2 (3).png",
    "image/Image Placeholder 2 (4).png",
    "image/Image Placeholder 2.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff121212),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 8.0.hp,
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Books",
                  style: formhintstyle.copyWith(fontSize: 20.0.sp),
                ),
              ),
              // Container(
              //   height: 8.0.hp,
              //   width: 90.0.wp,
              //   decoration: BoxDecoration(
              //       color: appcolor,
              //       borderRadius: BorderRadius.circular(8.0.sp)),
              //   child: TextFormField(
              //     // controller: kycController.name,
              //     style: formhintstyle,
              //     decoration: InputDecoration(
              //         focusedBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10.0.sp),
              //           borderSide: const BorderSide(
              //               color: Color(0xFFDDDCDC), width: 0.5),
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10.0.sp),
              //           borderSide: BorderSide(color: appcolor, width: 1),
              //         ),
              //         disabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10.0.sp),
              //           borderSide: const BorderSide(color: appcolor, width: 1),
              //         ),
              //         hintText: 'Search Books or Author...',
              //         contentPadding: const EdgeInsets.all(10),
              //         hintStyle: formhintstyle.copyWith(
              //             color: Color(0xff6A6A8B), fontSize: 12.0.sp),
              //         border: const OutlineInputBorder(
              //           gapPadding: 4,
              //         )),
              //   ),
              // ),
              Container(
                height:
                    // 53,
                    7.0.hp,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color(0xff1C1C4D),
                    borderRadius: BorderRadius.circular(8.0.sp)),
                child: TextFormField(
                  // controller: kycController.name,
                  style: formhintstyle,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0.sp),
                        borderSide: const BorderSide(
                            color: Color(0xFFDDDCDC), width: 0.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0.sp),
                        borderSide: BorderSide(color: appcolor, width: 1),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0.sp),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      hintText: 'Search Books or Author...',
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle: formhintstyle.copyWith(
                          color: Color(0xff6A6A8B), fontSize: 12.0.sp),
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              SizedBox(
                height: 3.0.hp,
              ),
              Expanded(
                child: SizedBox(
                  height: 35.0.hp,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 2.0.wp,
                      );
                    },
                    itemCount: template.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return latestSearch(index);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 3.0.hp,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget latestSearch(index) {
    return GestureDetector(
      onTap: () {
        Get.to(const EpisodeScreenNO());
      },
      child: Container(
        decoration: BoxDecoration(
            color: appcolor.withOpacity(0.9),
            borderRadius: BorderRadius.circular(7.0.sp)),
        width: MediaQuery.of(context).size.width,
        child: ListTile(
          leading: SizedBox(
            height: 35.0.hp,
            child: Image.asset(
              template[index].toString(),
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            "The Black Witch",
            style: formhintstyle.copyWith(fontSize: 14.0.sp),
          ),
          subtitle: Text("Barrack Obama",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 8.0.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400))
              //  formhintstyle.copyWith(fontSize: 10.0.sp),
              ),
        ),

        // Column(
        //   children: [
        //     SizedBox(
        //       height: 25.0.hp,
        //       // width: 50.0.wp,
        //       child: Image.asset(
        //         "image/banner.png",
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 2.0.hp,
        //     ),
        //     Text(
        //       "The Prisoner’s Key",
        //       style: formhintstyle,
        //     )
        //   ],
        // ),
      ),
    );
  }
}
