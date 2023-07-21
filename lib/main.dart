import 'package:audio_mela/OtpVerification/view/otpScreen.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'OtpVerification/controller/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: Color(0xff4838D1),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LogInScreen(),
    );
  }
}

class LogInScreen extends StatefulWidget {
  const LogInScreen({
    super.key,
  });

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  Controller controller = Get.put(Controller());
  // var _formKey = GlobalKey<FormState>();
  _submit() {
    Fluttertoast.showToast(msg: "Number should Be 10 Digits");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SizedBox(
          child: Stack(
            children: [
              Container(
                color: Color(0xff121212),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 12.0.hp,
                      ),
                      SizedBox(
                          height: 20.0.hp,
                          width: 40.0.wp,
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 8.0.hp,
                                  width: 25.0.wp,
                                  child: Image.asset("image/Logos.png")),
                              SizedBox(
                                height: 1.0.hp,
                              ),
                              Image.asset("image/Easybooks.png"),
                            ],
                          )
                          // Image.asset('image/Group 13326.png')
                          ),
                      SizedBox(
                        height: .5.hp,
                      ),
                      SizedBox(
                          height:
                              // 220,
                              30.0.hp,
                          width:
                              // 220,
                              65.0.wp,
                          child: Image.asset('image/Artwork.png')),
                      SizedBox(
                        height: 2.0.hp,
                      ),
                      Text(
                        "Listen to your favourite books",
                        style: GoogleFonts.poppins(
                            fontSize: 16.0.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      detailsContainer(),
                      SizedBox(
                        height: 2.5.hp,
                      ),
                      // dash()
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  // Widget dash() {
  //   return Container(
  //     height: .5.hp,
  //     width: 40.0.wp,
  //     decoration: BoxDecoration(
  //         color: Colors.white, borderRadius: BorderRadius.circular(10.0.sp)),
  //   );
  // }

  Widget detailsContainer() {
    return Column(
      children: [
        Container(
          height:
              //  208,
              30.0.hp,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xff212121),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 14.0.sp),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Text(
                    "Enter Details",
                    style: formhintstyle.copyWith(
                        color: const Color(0xffAAAAAA), fontSize: 15.0.sp),
                  )),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 6.8.hp,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(7.0.sp),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6.0.sp)),
                  // 100.00.wp,
                  child: TextFormField(
                    // validator: (value) {
                    //   // _submit();
                    //   // if (value!.isEmpty) {
                    //   //   return 'Enter a valid password!';
                    //   // }
                    //   // return null;
                    // },

                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (v) {
                      v.length != 10
                          ? Fluttertoast.showToast(
                              msg: "Number should Be 10 Digits")
                          : Get.to(OtpVerification());
                    },
                    controller: controller.mobileNumber,
                    style: formhintstyle.copyWith(
                        color: Colors.white, fontSize: 11.0.sp),
                    decoration: new InputDecoration.collapsed(
                      hintText: 'Enter Your Number',
                      // contentPadding:
                      //     EdgeInsets.only(left: 10, bottom: 10.0.sp, top: 0),
                      hintStyle: formhintstyle.copyWith(fontSize: 11.0.sp),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Text(
                  '''By Signing in, you agreed to our\n“Terms of Use” & “Privacy Policy” ''',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: formhintstyle.copyWith(
                      fontSize: 10.0.sp, color: Color(0xffAAAAAA)),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          height: 0.5.hp,
        )
      ],
    );
  }
}
