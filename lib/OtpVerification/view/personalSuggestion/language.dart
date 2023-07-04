import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../homeScreen/view/homemain.dart/screen_1.dart';
// import 'package:get/get.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.black87,
                image: DecorationImage(
                    image: AssetImage("image/Background.png"),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.all(14.0.sp),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select language",
                    style: formhintstyle.copyWith(fontSize: 16.0.sp),
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Placeholder",
                        style: formhintstyle.copyWith(color: Colors.white24),
                      ),
                    ),
                    height: 9.0.hp,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    color: Color(0xff1C1C4D),
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  languageList(),
                  SizedBox(
                    height: 2.0.hp,
                  ),
                  multiButtons(),
                  SizedBox(
                    height: 2.0.hp,
                  ),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }

  Widget multiButtons() {
    return GestureDetector(
      onTap: () {
        Get.to(
            const HomeScreen()); // title == "Submit" ? Get.to(const Languages()) : null;
      },
      child: Container(
        height: 8.5.hp,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xff1C1C4D),
            borderRadius: BorderRadius.circular(4.0.sp)),
        child: Text(
          "Save",
          style: formhintstyle.copyWith(color: Colors.white.withOpacity(0.5)),
        ),
      ),
    );
  }

  Widget languageList() {
    return Container(
      height: 20.0.hp,
      // color: Colors.amber,
    );
  }
}
