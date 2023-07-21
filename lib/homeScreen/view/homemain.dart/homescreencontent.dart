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
                height: 33.0.hp,
                child: ListView.separated(
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
                height: 8.0.hp,
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
        height: 150,
        //  9.0.hp,
        width: 31.0.wp,
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
              width: 30.5.wp,
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
                          width: 6.0.wp,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("image/sniparrow.png"),
                                  fit: BoxFit.cover)),
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
          aspectRatio: 4.0,
          enlargeCenterPage: false,
          disableCenter: true,
        ),
        items: image.map((i) {
          return Container(
              child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(i.toString(), fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors
                                        .white, // Change the color as per your requirement
                                    width: 1.0, // Adjust the width as needed
                                  ),
                                ),
                              ),
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
                            Container(
                              height: 8.0.hp,
                              width: 9.7.wp,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("image/sniparrow.png"),
                                      fit: BoxFit.cover)),
                            )
                            // CircleAvatar(
                            //   backgroundColor: arrow,
                            //   radius: 14.0.sp,
                            //   child:
                            //       //  Image.asset("image/playarrow.png")
                            //       Icon(
                            //     Iconsax.play4,
                            //     color: Colors.white,
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ));
        }).toList(),
      ),
    );
  }
}
