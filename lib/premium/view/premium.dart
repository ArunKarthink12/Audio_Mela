import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  var check = 0;
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
                  "Subscriptions",
                  style: formhintstyle.copyWith(
                    fontSize: 14.0.sp,
                  ),
                )),
            // Expanded(child: SizedBox())
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff121212),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 0.5,
                width: MediaQuery.of(context).size.width,
                color: appcolor,
              ),
              SizedBox(height: 2.0.hp),
              Text(
                "Premium Subscription",
                style: formhintstyle.copyWith(
                  fontSize: 18.0.sp,
                ),
              ),
              SizedBox(
                  height: 30.0.hp,
                  width: 50.0.wp,
                  child: Image.asset("image/premium.png")),
              Column(
                children: [
                  Stack(children: [
                    Icon(Icons.check,
                        color: check == 1 ? Colors.green : Colors.transparent),
                    unLimited()
                  ]),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  Stack(children: [
                    allEpisode(),
                    Icon(Icons.check,
                        color: check == 2 ? Colors.green : Colors.transparent),
                  ])
                ],
              ),
              SizedBox(
                height: 8.0.hp,
              ),
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Need RazorPay Account to Recharge");
                  Get.back();
                },
                child: Container(
                  height: 6.0.hp,
                  width: MediaQuery.of(context).size.width - 10.0.wp,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff44838D1),
                      borderRadius: BorderRadius.circular(6.0.sp)),
                  child: Text(
                    "Buy Now",
                    style: formhintstyle.copyWith(fontSize: 13.0.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 3.0.hp,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget unLimited() {
    return GestureDetector(
      onTap: () {
        setState(() {
          check = 1;
          print(check.toString());
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: .0.sp,
            right: 13.0.sp,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 4.0.hp,
                width: 24.0.wp,
                decoration: BoxDecoration(
                    color: Color(0xffFFCF32),
                    borderRadius: BorderRadius.circular(5.0.sp)),
                alignment: Alignment.center,
                child: Text(
                  "Most Popular",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff222C46),
                      fontSize: 10.0.sp),
                ),
              ),
            ),
          ),
          Container(
            height: 18.0.hp,
            // alignment: Alignment.center,
            width: MediaQuery.of(context).size.width - 10.0.wp,
            color: Colors.transparent,
          ),
          Container(
            height: 15.0.hp,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width - 10.0.wp,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0.sp),
                border: Border.all(color: Colors.white30, width: 1.0.sp)),
            child: ListTile(
                title: Text(
                  "Unlimited",
                  style: formhintstyle.copyWith(fontSize: 13.0.sp),
                ),
                subtitle: Text(
                  "For those who want to \nListen unlimited",
                  style: formhintstyle.copyWith(fontSize: 13.0.sp),
                ),
                trailing: Text(
                  "₹ 200",
                  style: sub.copyWith(fontSize: 15.0.sp),
                )),
          ),
        ],
      ),
    );
  }

  Widget allEpisode() {
    return GestureDetector(
      onTap: () {
        setState(() {
          check = 2;
          print(check.toString());
        });
      },
      child: Container(
        height: 15.0.hp,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 10.0.wp,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0.sp),
            border: Border.all(color: appcolor, width: 1.0.sp)),
        child: ListTile(
            title: Text(
              "All Episodes",
              style: sub.copyWith(color: Color(0xff4838D1), fontSize: 14.0.sp),
            ),
            subtitle: Text(
              "All episodes of your\nCurrent Audiobook ",
              style: sub.copyWith(color: Colors.grey, fontSize: 14.0.sp),
            ),
            trailing: Text(
              "₹ 99",
              style: sub.copyWith(color: Color(0xff4838D1), fontSize: 14.0.sp),
            )),
      ),
    );
  }
}
