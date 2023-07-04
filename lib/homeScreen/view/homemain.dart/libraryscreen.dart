import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 8.0.hp,
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Books",
                  style: formhintstyle.copyWith(fontSize: 14.0.sp),
                ),
              ),
              Container(
                height: 7.0.hp,
                width: 90.0.wp,
                decoration: BoxDecoration(
                    color: appcolor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(8.0.sp)),
                child: TextFormField(
                  // controller: kycController.name,
                  style: formhintstyle,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0.sp),
                        borderSide: const BorderSide(
                            color: Color(0xFFDDDCDC), width: 0.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0.sp),
                        borderSide: BorderSide(color: appcolor, width: 1),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0.sp),
                        borderSide: const BorderSide(color: appcolor, width: 1),
                      ),
                      hintText: 'Search Books or Author...',
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle: formhintstyle,
                      border: const OutlineInputBorder(
                        gapPadding: 4,
                      )),
                ),
              ),
              SizedBox(
                height: 3.0.hp,
              ),
              Expanded(
                child: SizedBox(
                  height: 35.0.hp,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 2.0.wp,
                      );
                    },
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return latestSearch();
                    },
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

  Widget latestSearch() {
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
      ),

      // Column(
      //   children: [
      //     SizedBox(
      //       height: 25.0.hp,
      //       // width: 50.0.wp,
      //       child: Image.asset(
      //         "image/banner.png",
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     SizedBox(
      //       height: 2.0.hp,
      //     ),
      //     Text(
      //       "The Prisoner’s Key",
      //       style: formhintstyle,
      //     )
      //   ],
      // ),
    );
  }
}
