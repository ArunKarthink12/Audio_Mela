import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff121212),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 18.0.sp,
              ),
              onPressed: () {
                Get.back();
              },
              color: Colors.white,
            ),

            // Expanded(child: SizedBox()),
            Container(
                width: 67.0.wp,
                color: Colors.transparent,
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 25.0.sp),
                child: Text(
                  "Settings",
                  style: formhintstyle.copyWith(
                    fontSize: 14.0.sp,
                  ),
                )),
            // Expanded(child: SizedBox())
          ],
        ),
      ),
      body: Container(
        color: Color(0xff121212),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            smallSpacing(),
            SizedBox(
                child: Padding(
              padding: EdgeInsets.all(10.0.sp),
              child: Row(
                children: [
                  SizedBox(
                    width: 3.0.wp,
                  ),
                  CircleAvatar(
                    radius: 20.0.sp,
                  ),
                  SizedBox(
                    width: 7.0.wp,
                  ),
                  Text(
                    "Name",
                    style: settings,
                  ),
                ],
              ),
            )),
            spacing(),
            Container(
              margin: EdgeInsets.only(left: 20.0.sp),
              alignment: Alignment.centerLeft,
              height: 8.0.hp,
              child: Text("Audio Language", style: settings),
            ),
            smallSpacing(),
            Container(
              margin: EdgeInsets.only(left: 20.0.sp),
              alignment: Alignment.centerLeft,
              height: 8.0.hp,
              child: Text("Share App", style: settings),
            ),
            spacing(),
            Container(
              margin: EdgeInsets.only(left: 20.0.sp),
              alignment: Alignment.centerLeft,
              height: 8.0.hp,
              child: Text("Rate Us", style: settings),
            ),
            smallSpacing(),
            Container(
              margin: EdgeInsets.only(left: 20.0.sp),
              alignment: Alignment.centerLeft,
              height: 8.0.hp,
              child: Text("About", style: settings),
            ),
            spacing(),
            Container(
              margin: EdgeInsets.only(left: 20.0.sp),
              alignment: Alignment.centerLeft,
              height: 8.0.hp,
              child: Text("Help & Support", style: settings
                  // formhintstyle.copyWith(
                  //     ),
                  ),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  "LogOut",
                  style: settings.copyWith(
                      color: Color(0xffF77A55), fontSize: 14.0.sp),
                ),
                alignment: Alignment.center,
                height: 7.8.hp,
                width: MediaQuery.of(context).size.width - 13.0.wp,
                // 50.0.wp,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF77A55), width: 0.3.wp),
                    borderRadius: BorderRadius.circular(7.0.sp)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget smallSpacing() {
    return Container(
      height: .3.hp,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff1C1C4D),
    );
  }

  Widget spacing() {
    return Container(
      height: 4.0.hp,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff1C1C4D),
    );
  }
}
