import 'package:audio_mela/constant/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constant/styles.dart';
import '../../../homeScreen/view/widgets.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff121212),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 4.0.hp,
            ),
            Container(
              height: 10.0.hp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 17.0.wp,
                    color: Colors.transparent,
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 4.0.hp,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Harry Potter and the Sorc...",
                      style: formhintstyle.copyWith(fontSize: 14.0.sp),
                    ),
                  ),
                  Container(
                      width: 17.0.wp,
                      alignment: Alignment.bottomRight,
                      color: Colors.transparent,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            SizedBox(
                height: 40.0.hp,
                width: 80.0.wp,
                child: bookImage("image/Image Placeholder 240x240.png")),
            bookDetails(context),
            SizedBox(
              height: 1.5.hp,
            ),
            SizedBox(
              child: ProgressBar(
                thumbRadius: 5.0.sp,
                thumbColor: Color(0xff4838D1),
                progressBarColor: Color(0xff4838D1),
                baseBarColor: Colors.white,
                timeLabelTextStyle: formhintstyle,
                progress: Duration(milliseconds: 1000),
                buffered: Duration(milliseconds: 2000),
                total: Duration(milliseconds: 5000),
                onSeek: (duration) {
                  print('User selected a new time: $duration');
                },
              ),
              height: 5.0.hp,
              width: 80.0.wp,
            ),
            SizedBox(
              height: 1.5.hp,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 8.0.hp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 7.0.hp,
                    width: 6.0.wp,
                    child: Image.asset("image/Volume Up.png"),
                  ),
                  SizedBox(
                    height: 7.0.hp,
                    width: 10.0.wp,
                    child: Image.asset("image/Arrow - Left Circle.png"),
                  ),
                  Container(
                    height: 20.0.hp,
                    width: 15.0.wp,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "image/circleplay.png",
                            )),
                        shape: BoxShape.circle),
                    // radius: 25.0.sp,
                    // backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 7.0.hp,
                    width: 10.0.wp,
                    child: Image.asset("image/Arrow - Right Circle.png"),
                  ),
                  SizedBox(
                    height: 7.0.hp,
                    width: 6.0.wp,
                    child: Image.asset("image/Upload.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
