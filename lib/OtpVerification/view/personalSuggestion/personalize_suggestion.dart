import 'package:audio_mela/OtpVerification/view/personalSuggestion/language.dart';
import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalizeSuggestion extends StatefulWidget {
  const PersonalizeSuggestion({super.key});

  @override
  State<PersonalizeSuggestion> createState() => _PersonalizeSuggestionState();
}

class _PersonalizeSuggestionState extends State<PersonalizeSuggestion> {
  List placeholderlist = [];
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
            height: MediaQuery.of(context).size.height - 7.0.hp,
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
                    "Personalize Suggestion",
                    style: formhintstyle.copyWith(fontSize: 15.0.sp),
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  Text(
                      "Choose min. 3 topic you like, we will give \nyou more often that relate to it.",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 10.0.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400))
                      // formhintstyle.copyWith(fontSize: 10.0.sp),
                      ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  Container(
                    height:
                        // 53,
                        7.8.hp,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Color(0xff1C1C4D),
                        borderRadius: BorderRadius.circular(5.0.sp)),
                    child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: selectedIndexes.isEmpty
                            ? Text(
                                "Placeholder",
                                style: formhintstyle.copyWith(
                                    color: Color(0xff6A6A8B),
                                    fontSize: 11.5.sp),
                              )
                            : SizedBox(
                                height: 4.0.hp,
                                child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      width: 2.0.wp,
                                    );
                                  },
                                  itemCount: selectedIndexes.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      // height: 2.0.hp,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: Colors.white,
                                              width: 0.5.wp),
                                          borderRadius:
                                              BorderRadius.circular(20.0.sp)),
                                      width: 20.0.wp,
                                      alignment: Alignment.center,
                                      child: Text(
                                        selectedIndexes[index].toString(),
                                        style: formhintstyle.copyWith(
                                            fontSize: 9.0.sp),
                                      ),
                                    );
                                  },
                                ),
                              )),
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  categoryList(),
                  SizedBox(
                    height: 2.0.hp,
                  ),
                  multiButtons(
                    "Submit",
                    Color(0xff4838D1),
                    Colors.white,
                    Color(0xff1C1C4D),
                  ),
                  SizedBox(
                    height: 2.0.hp,
                  ),
                  multiButtons(
                      "Skip", Colors.transparent, Colors.white, Colors.white),
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
  }

  Widget multiButtons(title, colorss, textcolor, bordercolor) {
    return GestureDetector(
      onTap: () {
        title == "Submit" ? Get.to(const Languages()) : null;
      },
      child: Container(
        height: 8.5.hp,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: bordercolor, width: 1),
            color: colorss,
            borderRadius: BorderRadius.circular(7.0.sp)),
        child: Text(
          title,
          style: formhintstyle.copyWith(color: textcolor, fontSize: 14.0.sp),
        ),
      ),
    );
  }

  List cate = [
    "Art",
    "Business",
    "Biography",
    "Comedy",
    "Culture",
    "Education",
    "News",
    "Philosophy",
    "Psychology",
    "Technology",
    "Travel"
  ];
  // var selectedIndex;
  var selectedcolor = appcolor;

  List<String> selectedIndexes = [];

  void toggleSelect(String index) {
    setState(() {
      if (selectedIndexes.contains(index)) {
        selectedIndexes.remove(index);
      } else {
        selectedIndexes.add(index);
      }
    });
  }

  // var selectedcolor = appcolor;
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
          var isSelected = selectedIndexes.contains(cate[index].toString());

          return GestureDetector(
            onTap: () => toggleSelect(cate[index].toString()),
            // {
            //   setState(() {
            //     selectedIndex = index;
            //     placeholderlist.add(cate[selectedIndex]);
            //     // placeholderlist.contains(cate[index])? placeholderlist[index]
            //     // index == selectedIndex? selectedcolor : Colors. transparent;
            //   });
            // },
            child: Container(
              height: 3.0.hp,
              decoration: BoxDecoration(
                  color: isSelected ? selectedcolor : Colors.transparent,
                  border: Border.all(color: Colors.white, width: 0.5.wp),
                  borderRadius: BorderRadius.circular(20.0.sp)),
              width: 5.0.wp,
              alignment: Alignment.center,
              child: Text(
                cate[index].toString(),
                style: formhintstyle.copyWith(fontSize: 9.0.sp),
              ),
            ),
          );
        },
      ),
    );
  }
}
