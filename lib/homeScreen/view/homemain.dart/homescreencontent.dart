import 'package:audio_mela/Episode/view/episodescreen1.dart';
import 'package:audio_mela/constant/responsive.dart';
import 'package:audio_mela/constant/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constant/colors.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  final List imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  // final List<Widget> imageSliders = imgList
  //     .map((item) => Container(
  //           child: Container(
  //             margin: EdgeInsets.all(5.0),
  //             child: ClipRRect(
  //                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
  //                 child: Stack(
  //                   children: <Widget>[
  //                     Image.network(item, fit: BoxFit.cover, width: 1000.0),
  //                     Positioned(
  //                       bottom: 0.0,
  //                       left: 0.0,
  //                       right: 0.0,
  //                       child: Container(
  //                         decoration: BoxDecoration(
  //                           gradient: LinearGradient(
  //                             colors: [
  //                               Color.fromARGB(200, 0, 0, 0),
  //                               Color.fromARGB(0, 0, 0, 0)
  //                             ],
  //                             begin: Alignment.bottomCenter,
  //                             end: Alignment.topCenter,
  //                           ),
  //                         ),
  //                         padding: EdgeInsets.symmetric(
  //                             vertical: 10.0, horizontal: 20.0),
  //                         // child: Text(
  //                         //   'No. ${imgList.indexOf(item)} image',
  //                         //   style: TextStyle(
  //                         //     color: Colors.white,
  //                         //     fontSize: 20.0,
  //                         //     fontWeight: FontWeight.bold,
  //                         //   ),
  //                         // ),
  //                       ),
  //                     ),
  //                   ],
  //                 )),
  //           ),
  //         ))
  //     .toList();
  final CarouselController _controller = CarouselController();
  Widget topic(maintopic) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          maintopic.toString(),
          style: formhintstyle.copyWith(fontSize: 14.0.sp),
        ),
        Text(
          "See more",
          style: formhintstyle.copyWith(
              color: Color(0xffBBB1FA), fontSize: 13.0.sp),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xff121212),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              topic("Categories"),
              SizedBox(
                height: 2.0.hp,
              ),
              categories(),
              SizedBox(
                height: 2.0.hp,
              ),
              banner(),
              SizedBox(
                height: 2.0.hp,
              ),
              topic("Popular show"),
              SizedBox(
                height: 2.0.hp,
              ),
              Container(
                height: 30.0.hp,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return popularShow();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 3.0.wp,
                      );
                    },
                    itemCount: 10),
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              topic("Recommended For You"),
              SizedBox(
                height: 2.0.hp,
              ),
              banner(),
              SizedBox(
                height: 5.0.hp,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget popularShow() {
    return GestureDetector(
      onTap: () {
        Get.to(const EpisodeScreenNO());
      },
      child: Container(
        height: 30.0.hp,
        //  9.0.hp,
        width: 34.0.wp,
        // 25.0.wp,
        // alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.sp),
                  image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                      ),
                      fit: BoxFit.cover)),
              height: 18.0.hp,
              // 122,
              // // 20.0.hp,
              width: 34.5.wp,
              // 110,
              // 30.0.wp,
              // child: Image.network(

              //   fit: BoxFit.cover,
              // ),
            ),
            SizedBox(
              // width: 30..wp,
              //  25.0.wp,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You are your \nonly limit",
                      style: formhintstyle.copyWith(fontSize: 10.0.sp),
                    ),
                    SizedBox(
                      height: 0.5.hp,
                    ),
                    Row(
                      children: [
                        Text(
                          "Episode-1",
                          style: formhintstyle.copyWith(
                              color: Color(0xffA8A8A8), fontSize: 10.0.sp),
                        ),
                        SizedBox(
                          width: 6.0.wp,
                        ),
                        Container(
                          height: 4.0.hp,
                          width: 11.0.wp,
                          child: Image.asset("image/Asset 4.png"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List image = [
    "image/banner.png",
    "image/banner.png",
    // Image.asset("image/banner.png"),
    // Image.asset("image/banner.png"),
  ];
  List categorylist = ["Art", "Business", "Comedy", "Drama", "Author"];
  Widget categories() {
    return Container(
      // constraints: BoxConstraints(maxHeight: 5.0.hp),
      height: 5.0.hp,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 2.0.wp,
          );
        },
        itemCount: categorylist.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            // height: 1.0.hp,
            width: 20.0.wp,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: appcolor, borderRadius: BorderRadius.circular(7.0.sp)),
            child: Text(
              categorylist[index].toString(),
              style: formhintstyle.copyWith(fontSize: 10.0.sp),
            ),
          );
        },
      ),
    );
  }

  Widget banner() {
    return Container(
      height: 20.0.hp,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        carouselController: _controller,
        options: CarouselOptions(
          autoPlay: true,
          // aspectRatio: 1.0,
          enlargeCenterPage: false, aspectRatio: 1,
          // disableCenter: true,
        ),
        items: image.map((i) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(9.0)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                        // width: 80.0.wp,
                        // height: 250,
                        color: Colors.transparent,
                        child: Image.asset(
                          i.toString(),
                          fit: BoxFit.cover,
                        )),
                    Container(
                      // width: 10.0.wp,
                      height: 10.0.hp,
                      decoration: BoxDecoration(color: Colors.transparent),
                      // padding: EdgeInsets.symmetric(
                      //     vertical: 10.0, horizontal: 20.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5.0.sp),
                                  child: Text(
                                    'Safe Area \nwith Young',
                                    style: formhintstyle.copyWith(
                                      fontSize: 12.0.sp,
                                    ),
                                    // TextStyle(
                                    //   color: Colors.white,

                                    //   fontWeight: FontWeight.bold,
                                    // ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.5.hp,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20.0.sp),
                                  child: Container(
                                      height: .1.hp,
                                      width: 15.0.wp,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Container(
                            height: 4.0.hp,
                            width: 11.0.wp,
                            child: Image.asset("image/Asset 4.png"),
                          ),
                          SizedBox(
                            width: 2.0.wp,
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          );
        }).toList(),
      ),
    );
  }
}
