import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Episode/view/episodescreen1.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                  "Explore",
                  style: formhintstyle.copyWith(fontSize: 20.0.sp),
                ),
              ),
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
              // Container(
              //   height: 8.0.hp,
              //   width: 90.0.wp,
              //   decoration: BoxDecoration(
              //       color: appcolor,
              //       borderRadius: BorderRadius.circular(8.0.sp)),
              //   child:
              // TextFormField(
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
              SizedBox(
                height: 3.0.hp,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Latest Search",
                  style: formhintstyle.copyWith(fontSize: 18.0.sp),
                ),
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              SizedBox(
                height: 30.7.hp,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 2.0.wp,
                    );
                  },
                  itemCount: template.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return latestSearch(index);
                  },
                ),
              ),
              SizedBox(
                height: .5.hp,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular Search",
                  style: formhintstyle.copyWith(fontSize: 18.0.sp),
                ),
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              SizedBox(
                height: 30.7.hp,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 2.0.wp,
                    );
                  },
                  itemCount: template.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return latestSearch(index);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List template = [
    "image/Image Placeholder 2 (1).png",
    "image/Image Placeholder 2.png"
  ];
  Widget latestSearch(index) {
    return GestureDetector(
      onTap: () {
        Get.to(const EpisodeScreenNO());
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          children: [
            SizedBox(
              height: 22.0.hp,
              // width: 50.0.wp,
              child: Image.asset(
                template[index].toString(),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Text(
              "The Prisoner’s Key",
              style: formhintstyle.copyWith(fontSize: 14.0.sp),
            )
          ],
        ),
      ),
    );
  }
}
