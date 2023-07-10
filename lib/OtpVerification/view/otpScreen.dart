import 'package:audio_mela/OtpVerification/controller/controller.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'personalSuggestion/personalize_suggestion.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  bool hasError = false;
  Controller controller = Get.put(Controller());
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
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 7.0.hp,
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 12.0.sp),
                            child: Container(
                              height: 5.0.hp,
                              width: 10.0.wp,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(3.0.sp)),
                              child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.white,
                                    size: 13.0.sp,
                                  )),
                            ),
                          ),
                          Text(
                            "Verify OTP",
                            style: formhintstyle.copyWith(
                                color: Colors.white, fontSize: 18.0.sp),
                          ),
                          Container(
                            height: 5.0.hp,
                            width: 10.0.wp,
                            color: Colors.transparent,
                          ),
                        ]),
                  ),
                  SizedBox(
                      height: 40.0.hp,
                      width: 80.0.wp,
                      child: Image.asset("image/Forgot password-rafiki 1.png")),
                  Container(
                      margin: EdgeInsets.only(left: 10.0.sp),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter OTP sent on ${controller.mobileNumber.text}",
                        style: formhintstyle.copyWith(fontSize: 14.0.sp),
                      )),
                  pinField(),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10.0.sp),
                    child: Text(
                      "Resend in 0:25 secs",
                      style: formhintstyle.copyWith(fontSize: 16.0.sp),
                    ),
                  ),
                  SizedBox(
                    height: 20.0.hp,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(PersonalizeSuggestion());
                    },
                    child: Container(
                      height: 5.4.hp,
                      width: MediaQuery.of(context).size.width - 10.0.wp,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0.sp),
                        color: Color(0xff4838D1),
                      ),
                      child: Text(
                        "Register",
                        style: formhintstyle.copyWith(fontSize: 14.0.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.0.hp,
                  ),
                  // Container(
                  //   height: 5.0.hp,
                  //   width: MediaQuery.of(context).size.width,
                  //   color: Colors.black,
                  //   alignment: Alignment.bottomCenter,
                  //   // child: dash(),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget dash() {
  //   return Container(
  //     height: .5.hp,
  //     width: 40.0.wp,
  //     decoration: BoxDecoration(
  //         color: Colors.white, borderRadius: BorderRadius.circular(10.0.sp)),
  //   );
  // }

  Widget pinField() {
    return Padding(
      padding: EdgeInsets.all(14.0.sp),
      child: PinCodeTextField(
        appContext: context,
        textStyle: GoogleFonts.inter(
            textStyle: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.w600)),
        pastedTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        length: 4,
        //obscureText: true,
        // obscuringCharacter: '*',
        // obscuringWidget: FlutterLogo(
        //   size: 24,
        // ),
        blinkWhenObscuring: true,
        animationType: AnimationType.fade,

        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 7.0.hp,
          fieldWidth: 15.0.wp,
          activeColor: Colors.white,
          selectedFillColor: Color(0xff212121),
          selectedColor: Colors.white,
          inactiveColor: Colors.white,
          inactiveFillColor: Colors.white,
          activeFillColor: hasError ? Colors.white : Colors.white,
        ),
        cursorColor: Colors.white,
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        keyboardType: TextInputType.number,

        onChanged: (value) {
          // ignore: avoid_print
          print(value);
          setState(() {
            // currentText = value;
          });
        },

        onCompleted: (value) {},
      ),
    );
  }
}
