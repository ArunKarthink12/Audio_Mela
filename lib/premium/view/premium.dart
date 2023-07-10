import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
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
              unLimited(),
              SizedBox(
                height: 3.0.hp,
              ),
              allEpisode(),
              SizedBox(
                height: 13.0.hp,
              ),
              Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget unLimited() {
    return Container(
      height: 12.0.hp,
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
    );
  }

  Widget allEpisode() {
    return Container(
      height: 12.0.hp,
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
    );
  }
}
