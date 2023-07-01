import 'package:audio_mela/OtpVerification/view/personalSuggestion/language.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalizeSuggestion extends StatefulWidget {
  const PersonalizeSuggestion({super.key});

  @override
  State<PersonalizeSuggestion> createState() => _PersonalizeSuggestionState();
}

class _PersonalizeSuggestionState extends State<PersonalizeSuggestion> {
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
                    "Personalize Suggestion",
                    style: formhintstyle.copyWith(fontSize: 16.0.sp),
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  Text(
                    "Choose min. 3 topic you like, we will give \nyou more often that relate to it.",
                    style: formhintstyle.copyWith(fontSize: 8.0.sp),
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
                  categoryList(),
                  SizedBox(
                    height: 2.0.hp,
                  ),
                  multiButtons(
                    "Submit",
                    Color(0xff1C1C4D),
                    Colors.white.withOpacity(0.5),
                    Color(0xff1C1C4D),
                  ),
                  SizedBox(
                    height: 2.0.hp,
                  ),
                  multiButtons(
                      "Skip", Colors.transparent, Colors.white, Colors.white)
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
            border: Border.all(color: bordercolor, width: 2),
            color: colorss,
            borderRadius: BorderRadius.circular(4.0.sp)),
        child: Text(
          title,
          style: formhintstyle.copyWith(color: textcolor),
        ),
      ),
    );
  }

  Widget categoryList() {
    return Container(
      height: 20.0.hp,
      // color: Colors.amber,
    );
  }
}
