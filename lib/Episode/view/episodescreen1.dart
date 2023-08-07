import 'package:audio_mela/Episode/view/playscreen/playscreen.dart';
import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:audio_mela/premium/view/premium.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../homeScreen/controller/multiscreenController.dart';
import '../../homeScreen/view/homemain.dart/screen_1.dart';
import '../../homeScreen/view/widgets.dart';

class EpisodeScreenNO extends StatefulWidget {
  const EpisodeScreenNO({super.key});

  @override
  State<EpisodeScreenNO> createState() => _EpisodeScreenNOState();
}

// bool playBook = false;
MultiScreenController multiScreenController = Get.put(MultiScreenController());

class _EpisodeScreenNOState extends State<EpisodeScreenNO> {
  deviceback() {
    Get.to(HomeScreen());
    multiScreenController.pages[2];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: multiScreenController.playBook == true
          ? Container(
              height: 12.0.hp,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff0F0F29).withOpacity(.9),
              child: Column(
                children: [
                  ProgressBar(
                    thumbRadius: 1,
                    bufferedBarColor: Colors.white,
                    baseBarColor: Colors.white,
                    timeLabelTextStyle: TextStyle(color: Colors.transparent),
                    progress: Duration(milliseconds: 1000),
                    buffered: Duration(milliseconds: 2000),
                    total: Duration(milliseconds: 5000),
                    onSeek: (duration) {
                      print('User selected a new time: $duration');
                    },
                  ),
                  SizedBox(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 8.0.hp,
                          width: 16.0.wp,
                          child:
                              Image.asset("image/Image Placeholder 2 (4).png")),
                      SizedBox(
                        height: 8.0.hp,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Harry Potter and the...",
                              style: formhintstyle.copyWith(fontSize: 14.0.sp),
                            ),
                            Text("J.K. Rowling",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 13.0.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200))
                                // formhintstyle.copyWith(color: Colors.white24),
                                )
                          ],
                        ),
                      ),
                      CircleAvatar(
                        child: SizedBox(
                            height: 5.0.hp,
                            width: 5.0.wp,
                            child: Image.asset("image/Asset 3 (1).png")),
                        radius: 15.0.sp,
                        backgroundColor: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            multiScreenController.playBook = false;
                          });
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.white24,
                        ),
                      )
                    ],
                  ))
                ],
              ),
            )
          : SizedBox(),
      body: WillPopScope(
        onWillPop: () {
          return deviceback();
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff121212),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 4.0.hp,
                ),
                Container(
                  height: 10.0.hp,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 17.0.wp,
                        color: Colors.transparent,
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                            onPressed: () {
                              // Get.();
                              Get.to(HomeScreen());
                              multiScreenController.pages[2];
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        color: Colors.transparent,
                        height: 4.0.hp,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Harry Potter and the Sorc...",
                          style: formhintstyle.copyWith(fontSize: 14.0.sp),
                        ),
                      ),
                      Container(
                          width: 17.0.wp,
                          alignment: Alignment.bottomRight,
                          color: Colors.transparent,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                color: Colors.transparent,
                              )))
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 1.0.hp,
                // ),
                bookImage("image/Image Placeholder 240x240.png"),
                SizedBox(
                  height: 1.5.hp,
                ),
                bookDetails(context),
                categories(),
                SizedBox(
                  height: 2.0.hp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buttonz(
                        "Play Audio", Color(0xff4838D1), Colors.transparent),
                    SizedBox(
                      width: 5.0.wp,
                    ),
                    buttonz(
                        multiScreenController.playBook != false
                            ? "ReadBook"
                            : "Bookmark",
                        Colors.transparent,
                        Colors.white),
                  ],
                ),
                SizedBox(
                  height: 2.0.hp,
                ),
                Container(
                  // height: 4.0.hp,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 22.0.sp),
                  color: Colors.transparent,
                  child: Text(
                    "Episodes",
                    style: formhintstyle.copyWith(fontSize: 18.0.sp),
                  ),
                ),
                SizedBox(
                  height: 0.0.hp,
                ),
                SizedBox(
                  // height: 10.0.hp,
                  child: ListView.separated(
                    padding: EdgeInsets.all(12.0.sp),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 2.0.wp,
                      );
                    },
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return episodeList(index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget episodeList(index) {
    return Container(
      alignment: Alignment.center,
      height: 11.0.hp,
      decoration: BoxDecoration(
          color: Color(0xff1C1C4D),

          //  appcolor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(7.0.sp)),
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: SizedBox(
          height: 16.0.hp,
          child: Stack(
            children: [
              SizedBox(
                // height: 16.0.hp,
                width: 21.0.wp,
                child: Image.asset(
                  "image/episode1.png",
                  fit: BoxFit.cover,
                ),
              ),
              Visibility(
                visible: index == 0 ? false : true,
                child: Container(
                  child: Image.asset(
                    "image/lock.png",
                    fit: BoxFit.cover,
                  ),
                  height: 16.0.hp,
                  width: 21.0.wp,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          "The Black Witch",
          style: formhintstyle.copyWith(fontSize: 13.0.sp),
        ),
        subtitle: Text(
          "Barrack Obama",
          style: formhintstyle,
        ),
        trailing: GestureDetector(
            onTap: () {
              setState(() {
                index == 0
                    ? multiScreenController.playBook = true
                    : Get.to(const PremiumScreen());
                // Fluttertoast.showToast(msg: "Locked");
              });
            },
            child: index == 0
                ? multiScreenController.playBook != true
                    ? SizedBox(
                        height: 8.0.hp,
                        width: 9.0.wp,
                        child: Image.asset("image/Asset 4.png"))
                    : SizedBox(
                        width: 9.0.wp,
                        child: CircleAvatar(
                          radius: 13.0.sp,
                          backgroundColor: Color(0xff4838D1),
                          child: Icon(
                            Icons.pause,
                            color: Colors.white,
                          ),
                        ),
                      )
                : SizedBox(
                    height: 8.0.hp,
                    width: 9.0.wp,
                    child: Image.asset("image/Asset 4.png"))

            // CircleAvatar(
            //   backgroundColor: arrow,
            //   radius: 14.0.sp,
            //   child: Icon(
            //     Iconsax.play4,
            //     color: Colors.white,
            //   ),
            // ),
            ),
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: EdgeInsets.only(left: 22.0.sp),
      height: 4.5.hp,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 3.0.wp,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            // height: 3.8.hp,
            height: 3.0.hp,
            width: 20.0.wp,

            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.5.wp),
                borderRadius: BorderRadius.circular(8.0.sp)),
            // width: 20.5.wp,
            alignment: Alignment.center,
            child: Text("Static Data",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 9.0.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600))
                //  formhintstyle.copyWith(fontSize: 9.0.sp),
                ),
          );
        },
      ),
    );
  }

  Widget buttonz(title, bgColor, borderColor) {
    return GestureDetector(
      onTap: () {
        title == "Play Audio" ? Get.to(PlayScreen()) : null;
      },
      child: Container(
        height:
            //  53,
            6.7.hp,
        width: MediaQuery.of(context).size.width / 2 - 10.0.wp,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title == "Play Audio"
                ? Icon(
                    Iconsax.play_circle,
                    color: Colors.white,
                  )
                : title != "Bookmark"
                    ? SizedBox(
                        height: 5.0.hp,
                        width: 5.0.wp,
                        child: Image.asset("image/ReadBook.png"))
                    : Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
            SizedBox(
              width: 2.0.wp,
            ),
            Text(
              title.toString(),
              style: formhintstyle.copyWith(fontSize: 12.0.sp),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(9.0.sp),
            border: Border.all(color: borderColor, width: 1)),
      ),
    );
  }
}
