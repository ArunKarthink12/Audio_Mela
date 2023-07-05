import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/homescreencontent.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/libraryscreen.dart';
import 'package:audio_mela/homeScreen/view/homemain.dart/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../settings/view/settings.dart';

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
              backgroundColor: appcolor,
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
                    icon: Icon(
                      Icons.home_filled,
                      color: Colors.white,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notes_outlined,
                    color: Colors.white,
                  ),
                  label: "Library",
                  backgroundColor: Colors.white,
                )
              ]),
        ),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  Get.to(const SettingsScreen());
                },
              ),
            )
          ],
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black87,
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
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Audio",
                      style: inter.copyWith(
                          color: Color(0xff4838D1), fontSize: 18.0.sp)),
                  TextSpan(
                      text: "mela", style: inter.copyWith(fontSize: 18.0.sp))
                ]),
              )
            ],
          ),
        ),
        body: pages[currentindex]);
  }
}
