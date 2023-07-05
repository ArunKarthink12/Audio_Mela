import 'package:audio_mela/constant/responsive.dart';
import 'package:flutter/material.dart';

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
        color: Colors.black87,
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
            SizedBox(
                height: 40.0.hp,
                width: 80.0.wp,
                child: bookImage("image/Image Placeholder 240x240.png")),
            bookDetails(context),
            SizedBox(
              child: ProgressBar(
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: 8.0.hp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 7.0.hp,
                    width: 7.0.wp,
                    child: Image.asset("image/Volume Up.png"),
                  ),
                  SizedBox(
                    height: 7.0.hp,
                    width: 7.0.wp,
                    child: Image.asset("image/Arrow - Left Circle.png"),
                  ),
                  CircleAvatar(child: Icon(Icons.play_arrow)),
                  SizedBox(
                    height: 7.0.hp,
                    width: 7.0.wp,
                    child: Image.asset("image/Arrow - Right Circle.png"),
                  ),
                  SizedBox(
                    height: 7.0.hp,
                    width: 7.0.wp,
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
