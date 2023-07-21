import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/homescreencontent.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/libraryscreen.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/searchscreen.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../settings/view/settings.dart';
import '../../controller/multiscreenController.dart';
// import 'package:get/get.dart';

// import '../../../settings/view/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var currentindex = 0;

class _HomeScreenState extends State<HomeScreen> {
  // bool playBook = false;
  MultiScreenController multiScreenController =
      Get.put(MultiScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        bottomNavigationBar: SafeArea(
          // maintainBottomViewPadding: true,
          // minimum: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              multiScreenController.playBook == true
                  ? Container(
                      height: 12.0.hp,
                      width: MediaQuery.of(context).size.width,
                      color: appcolor,
                      child: Column(
                        children: [
                          ProgressBar(
                            thumbRadius: 1,
                            bufferedBarColor: Colors.white,
                            baseBarColor: Colors.white,
                            timeLabelTextStyle:
                                TextStyle(color: Colors.transparent),
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
                                  child: Image.asset(
                                      "image/Image Placeholder 2 (4).png")),
                              SizedBox(
                                height: 8.0.hp,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Harry Potter and the...",
                                      style: formhintstyle.copyWith(
                                          fontSize: 14.0.sp),
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
                              Container(
                                height: 8.0.hp,
                                width: 10.0.wp,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "image/circleplay.png",
                                        )),
                                    shape: BoxShape.circle),
                                // radius: 25.0.sp,
                                // backgroundColor: Colors.transparent,
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
              BottomNavigationBar(
                  showSelectedLabels: true,
                  // selectedLabelStyle: formhintstyle.copyWith(color: Colors.white),
                  // unselectedLabelStyle: formhintstyle.copyWith(color: Colors.white),
                  backgroundColor: Color(0xff0F0F29),
                  currentIndex: currentindex,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Color(0xffBBB1FA),
                  selectedFontSize: 12.0.sp,
                  unselectedFontSize: 10.0.sp,
                  iconSize: 20.0.sp,
                  showUnselectedLabels: true,
                  onTap: (v) {
                    currentindex = v;
                    setState(() {});
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: currentindex == 0
                            ? SizedBox(
                                height: 3.0.hp,
                                width: 5.0.wp,
                                child: Image.asset(
                                  "image/Home.png",
                                ))
                            : SizedBox(
                                height: 4.0.hp,
                                width: 6.0.wp,
                                child: Image.asset("image/unselectHome.png")),
                        label: "Home"),
                    BottomNavigationBarItem(
                      icon: currentindex == 1
                          ? SizedBox(
                              height: 4.0.hp,
                              width: 6.0.wp,
                              child: Image.asset("image/selectedSearch.png"))
                          : SizedBox(
                              height: 4.0.hp,
                              width: 6.0.wp,
                              child: Image.asset("image/unselectSearch.png")),
                      label: "Search",
                    ),
                    BottomNavigationBarItem(
                      icon: currentindex == 2
                          ? SizedBox(
                              height: 4.0.hp,
                              width: 6.0.wp,
                              child: Image.asset("image/Document.png"))
                          : SizedBox(
                              height: 4.0.hp,
                              width: 6.0.wp,
                              child: Image.asset("image/unselectDocument.png")),
                      label: "Library",
                      backgroundColor: Colors.white,
                    )
                  ]),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Padding(
                padding: EdgeInsets.all(10.0.sp),
                child: GestureDetector(
                  onTap: () {
                    Get.to(const SettingsScreen());
                  },
                  child: SizedBox(
                    height: 7.0.hp,
                    width: 7.0.wp,
                    child: Image.asset("image/Setting.png"),
                  ),
                )
                // IconButton(
                //   icon: Icon(
                //     Icons.settings,
                //     color: Colors.white,
                //   ),
                //   onPressed: () {
                //     Get.to(const SettingsScreen());
                //   },
                // ),
                )
          ],
          foregroundColor: Color(0xff121212),
          surfaceTintColor: Color(0xff121212),
          shadowColor: Color(0xff121212),
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff121212),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 10.0.hp,
                  width: 10.0.wp,
                  child: Image.asset("image/Logos.png")),
              SizedBox(
                width: 2.0.wp,
              ),
              Container(
                height: 10.0.hp,
                color: Colors.transparent,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10.0.sp),
                // width: 10.0.wp,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Audio",
                        style: GoogleFonts.inter(
                            color: Color(0xff4838D1),
                            fontSize: 18.0.sp,
                            letterSpacing:
                                1.6, // fontSize: 8.0.sp, color: Colors.white,
                            fontWeight: FontWeight.w700)),
                    // inter.copyWith(
                    //     color: Color(0xff4838D1),
                    //     fontSize: 18.0.sp,
                    //     letterSpacing: 1.6)),
                    TextSpan(
                        text: currentindex == 2 ? "book" : "mela",
                        style: inter.copyWith(
                            fontSize: 18.0.sp, letterSpacing: 1.6))
                  ]),
                ),
              )
            ],
          ),
        ),
        body: Container(
          height: multiScreenController.playBook == true
              ? MediaQuery.of(context).size.height - 30.0.hp
              : MediaQuery.of(context).size.height - 17.0.hp,
          child: multiScreenController.pages[currentindex],
        ));
  }
}
