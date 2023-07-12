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
                color: Color(0xff121212),
                image: DecorationImage(
                    image: AssetImage("image/Background.png"),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 15.0.hp,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.0.sp),
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.all(14.0.sp),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0.hp,
                  ),
                  Text(
                    "Select language",
                    style: formhintstyle.copyWith(fontSize: 15.0.sp),
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  // Text(
                  //     "Choose min. 3 topic you like, we will give \nyou more often that relate to it.",
                  //     style: GoogleFonts.poppins(
                  //         textStyle: TextStyle(
                  //             fontSize: 10.0.sp,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.w400))
                  //     // formhintstyle.copyWith(fontSize: 10.0.sp),
                  //     ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Placeholder",
                        style: formhintstyle.copyWith(
                            color: Color(0xff6A6A8B), fontSize: 11.5.sp),
                      ),
                    ),
                    height:
                        // 53,
                        7.8.hp,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Color(0xff1C1C4D),
                        borderRadius: BorderRadius.circular(5.0.sp)),
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  categoryList(),
                  SizedBox(
                    height: 2.0.hp,
                  ),
                  multiButtons(),
                  SizedBox(
                    height: 2.0.hp,
                  ),
                  // multiButtons(
                  //     "Skip", Colors.transparent, Colors.white, Colors.white),
                  SizedBox(
                    height: 10.0.hp,
                  ),
                ],
              ),
            )),
          )
        ],
      ),
    );

    // Scaffold(
    //   resizeToAvoidBottomInset: true,
    //   body: Stack(
    //     children: [
    //       Container(
    //         height: MediaQuery.of(context).size.height,
    //         width: MediaQuery.of(context).size.width,
    //         decoration: BoxDecoration(
    //             color: Color(0xff121212),
    //             image: DecorationImage(
    //                 image: AssetImage("image/Background.png"),
    //                 fit: BoxFit.fill)),
    //       ),
    //       Container(
    //         height: MediaQuery.of(context).size.height,
    //         width: MediaQuery.of(context).size.width,
    //         alignment: Alignment.center,
    //         child: SingleChildScrollView(
    //             child: Padding(
    //           padding: EdgeInsets.all(14.0.sp),
    //           child: Column(
    //             // mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "Select language",
    //                 style: formhintstyle.copyWith(fontSize: 16.0.sp),
    //               ),
    //               SizedBox(
    //                 height: 3.0.hp,
    //               ),
    //               SizedBox(
    //                 height: 3.0.hp,
    //               ),
    //               Container(
    //                 child: Padding(
    //                   padding: EdgeInsets.only(left: 10.0),
    //                   child: Text(
    //                     "Placeholder",
    //                     style: formhintstyle.copyWith(
    //                         color: Colors.white24, fontSize: 10.0.sp),
    //                   ),
    //                 ),
    //                 height: 9.0.hp,
    //                 width: MediaQuery.of(context).size.width,
    //                 alignment: Alignment.centerLeft,
    //                 color: Color(0xff1C1C4D),
    //               ),
    //               SizedBox(
    //                 height: 3.0.hp,
    //               ),
    //               languageList(),
    //               SizedBox(
    //                 height: 2.0.hp,
    //               ),
    //               multiButtons(),
    //               SizedBox(
    //                 height: 2.0.hp,
    //               ),
    //             ],
    //           ),
    //         )),
    //       )
    //     ],
    //   ),
    // );
  }

  List cate = [
    "English",
    "Hindi",
    "Bengali",
    "Marathi",
    "Gujrati",
    "Telugu",
    "Kannada",
    "Spanish"
  ];
  Widget categoryList() {
    return Container(
      height: 30.0.hp,
      // color: Colors.amber,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: cate.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            childAspectRatio: 3),
        itemBuilder: (context, index) {
          return Container(
            height: 3.0.hp,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.5.wp),
                borderRadius: BorderRadius.circular(20.0.sp)),
            width: 5.0.wp,
            alignment: Alignment.center,
            child: Text(
              cate[index].toString(),
              style: formhintstyle.copyWith(fontSize: 10.0.sp),
            ),
          );
        },
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
            color: Color(0xff4838D1),
            borderRadius: BorderRadius.circular(4.0.sp)),
        child: Text(
          "Save",
          style: formhintstyle.copyWith(
              color: Colors.white.withOpacity(0.5), fontSize: 14.0.sp),
        ),
      ),
    );
  }

  List language = [
    "English",
    "Tamil",
    "Hindi",
    "Telugu",
    "Spanish",
  ];
  Widget languageList() {
    return Container(
      height: 30.0.hp,
      // color: Colors.amber,
      child: GridView.builder(
        itemCount: language.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0.sp,
            mainAxisSpacing: 10.0.sp,
            childAspectRatio: 4),
        itemBuilder: (context, index) {
          return Container(
            height: 2.0.hp,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white24, width: 1.0.wp),
                borderRadius: BorderRadius.circular(9.0.sp)),
            width: 5.0.wp,
            alignment: Alignment.center,
            child: Text(
              language[index].toString(),
              style: formhintstyle.copyWith(fontSize: 9.0.sp),
            ),
          );
        },
      ),
    );
  }
}
