import 'package:audio_mela/Episode/view/playscreen/playscreen.dart';
import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../homeScreen/view/widgets.dart';

class EpisodeScreenNO extends StatefulWidget {
  const EpisodeScreenNO({super.key});

  @override
  State<EpisodeScreenNO> createState() => _EpisodeScreenNOState();
}

bool playBook = false;

class _EpisodeScreenNOState extends State<EpisodeScreenNO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: playBook == true
          ? Container(
              height: 15.0.hp,
              width: MediaQuery.of(context).size.width,
              color: appcolor,
              child: Column(
                children: [
                  ProgressBar(
                    timeLabelTextStyle: TextStyle(color: Colors.transparent),
                    progress: Duration(milliseconds: 1000),
                    buffered: Duration(milliseconds: 2000),
                    total: Duration(milliseconds: 5000),
                    onSeek: (duration) {
                      print('User selected a new time: $duration');
                    },
                  ),
                  SizedBox(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 8.0.hp,
                          width: 16.0.wp,
                          child: Image.asset("")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "QWERTYUIOPOIUYFD",
                            style: formhintstyle,
                          ),
                          Text(
                            "wertghjhgvc",
                            style: formhintstyle,
                          )
                        ],
                      ),
                      CircleAvatar(
                        child: Icon(Icons.play_arrow),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              playBook = false;
                            });
                          },
                          child: Icon(Icons.close))
                    ],
                  ))
                ],
              ),
            )
          : SizedBox(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 4.0.hp,
              ),
              Container(
                height: 10.0.hp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 17.0.wp,
                      color: Colors.transparent,
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.white,
                          )),
                    ),
                    Text(
                      "Harry Potter and the Sorc...",
                      style: formhintstyle.copyWith(fontSize: 12.0.sp),
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
                height: 3.0.hp,
              ),
              bookImage("image/Image Placeholder 240x240.png"),
              // SizedBox(
              //   height: 3.0.hp,
              // ),
              bookDetails(context),
              categories(),
              SizedBox(
                height: 2.0.hp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonz(Icons.play_arrow, "Play Audio", Color(0xff4838D1),
                      Colors.transparent),
                  SizedBox(
                    width: 10.0.wp,
                  ),
                  buttonz(Icons.bookmark, "Bookmark", Colors.transparent,
                      Colors.white),
                ],
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              Container(
                height: 4.0.hp,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 22.0.sp),
                color: Colors.transparent,
                child: Text(
                  "Episodes",
                  style: formhintstyle.copyWith(fontSize: 12.0.sp),
                ),
              ),
              SizedBox(
                height: 35.0.hp,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 2.0.wp,
                    );
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return episodeList();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget episodeList() {
    return Container(
      decoration: BoxDecoration(
          color: appcolor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(7.0.sp)),
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: SizedBox(
          height: 35.0.hp,
          child: Image.asset(
            "image/banner.png",
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          "The Black Witch",
          style: formhintstyle.copyWith(fontSize: 13.0.sp),
        ),
        subtitle: Text(
          "Barrack Obama",
          style: formhintstyle,
        ),
        trailing: GestureDetector(
          onTap: () {
            setState(() {
              playBook = true;
            });
          },
          child: CircleAvatar(
            backgroundColor: arrow,
            radius: 14.0.sp,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: EdgeInsets.only(left: 22.0.sp),
      height: 5.0.hp,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 3.0.wp,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              "$index",
              style: formhintstyle,
            ),
            height: 5.0.hp,
            width: 20.0.wp,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(10.0.sp)),
          );
        },
      ),
    );
  }

  Widget buttonz(icons, title, bgColor, borderColor) {
    return GestureDetector(
      onTap: () {
        title == "Play Audio" ? Get.to(PlayScreen()) : null;
      },
      child: Container(
        height: 10.0.hp,
        width: MediaQuery.of(context).size.width / 2 - 10.0.wp,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons,
              color: Colors.white,
            ),
            Text(
              title.toString(),
              style: formhintstyle.copyWith(fontSize: 12.0.sp),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(9.0.sp),
            border: Border.all(color: borderColor, width: 1)),
      ),
    );
  }
}
