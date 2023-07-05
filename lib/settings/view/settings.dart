import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black87,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),

            // Expanded(child: SizedBox()),
            Container(
                width: MediaQuery.of(context).size.width - 20.0.wp,
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Text(
                  "Settings",
                  style: formhintstyle.copyWith(
                    fontSize: 16.0.sp,
                  ),
                )),
            // Expanded(child: SizedBox())
          ],
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Container(
              height: 1.0.hp,
              width: MediaQuery.of(context).size.width,
              color: appcolor,
            ),
            SizedBox(
                child: Row(
              children: [
                CircleAvatar(),
                Text("Name"),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
