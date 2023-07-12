import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/homescreencontent.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/libraryscreen.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../settings/view/settings.dart';
// import 'package:get/get.dart';

// import '../../../settings/view/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var currentindex = 0;
List pages = [HomeScreenContent(), SearchScreen(), LibraryScreen()];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: SafeArea(
          // maintainBottomViewPadding: true,
          // minimum: const EdgeInsets.all(15.0),
          child: BottomNavigationBar(
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
        body: pages[currentindex]);
  }
}
