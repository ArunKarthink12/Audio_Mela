import 'package:audio_mela/constant/colors.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                  "Explore",
                  style: formhintstyle.copyWith(fontSize: 14.0.sp),
                ),
              ),
              Container(
                height: 7.0.hp,
                width: 90.0.wp,
                decoration: BoxDecoration(
                    color: appcolor,
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
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Latest Search",
                  style: formhintstyle.copyWith(fontSize: 14.0.sp),
                ),
              ),
              SizedBox(
                height: 3.0.hp,
              ),
              SizedBox(
                height: 30.7.hp,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 2.0.wp,
                    );
                  },
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return latestSearch();
                  },
                ),
              ),
              SizedBox(
                height: 3.0.hp,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular Search",
                  style: formhintstyle.copyWith(fontSize: 14.0.sp),
                ),
              ),
              SizedBox(
                height: 3.0.hp,
              ),
              SizedBox(
                height: 30.7.hp,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 2.0.wp,
                    );
                  },
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return latestSearch();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget latestSearch() {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        children: [
          SizedBox(
            height: 25.0.hp,
            // width: 50.0.wp,
            child: Image.asset(
              "image/banner.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 2.0.hp,
          ),
          Text(
            "The Prisoner’s Key",
            style: formhintstyle.copyWith(fontSize: 12.0.sp),
          )
        ],
      ),
    );
  }
}
