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
                color: Colors.black87,
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
                        height: 5.0.hp,
                      ),
                      SizedBox(
                          height: 20.0.hp,
                          width: 40.0.wp,
                          child: Image.asset('image/Group 13326.png')),
                      SizedBox(
                        height: 2.0.hp,
                      ),
                      SizedBox(
                          height: 30.0.hp,
                          width: 60.0.wp,
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
                      dash()
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget dash() {
    return Container(
      height: .5.hp,
      width: 40.0.wp,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0.sp)),
    );
  }

  Widget detailsContainer() {
    return Column(
      children: [
        Container(
          height: 26.9.hp,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey.shade600,
          ),
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
                        color: const Color(0xffAAAAAA), fontSize: 12.0.sp),
                  )),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 5.0.hp,
                  width: MediaQuery.of(context).size.width - 10.0.wp,
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
                      v.length != 10 ? _submit : Get.to(OtpVerification());
                    },
                    controller: controller.mobileNumber,
                    style: formhintstyle.copyWith(
                        color: Colors.white, fontSize: 11.0.sp),
                    decoration: InputDecoration(
                      hintText: 'Enter Your Number',
                      contentPadding:
                          EdgeInsets.only(left: 10, bottom: 10.0.sp, top: 0),
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
                  style: formhintstyle,
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
