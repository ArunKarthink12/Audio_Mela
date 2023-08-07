import 'package:audio_mela/constant/colors.dart';
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
  List languages = [];
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
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          // removeindex = index;
                                          // language.removeAt(removeindex);
                                        });
                                      },
                                      child: Container(
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
                  multiButtons(),
                  SizedBox(
                    height: 2.0.hp,
                  ),
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

  Widget categoryList() {
    return Container(
      height: 30.0.hp,
      // color: Colors.amber,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: cate.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            childAspectRatio: 3),
        itemBuilder: (context, index) {
          var isSelected = selectedIndexes.contains(cate[index].toString());
          return GestureDetector(
            onTap: () => toggleSelect(cate[index].toString()),
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
                style: formhintstyle.copyWith(fontSize: 10.0.sp),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget multiButtons() {
    return GestureDetector(
      onTap: () {
        Get.to(const HomeScreen());
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
          style: formhintstyle.copyWith(color: Colors.white, fontSize: 14.0.sp),
        ),
      ),
    );
  }
}
