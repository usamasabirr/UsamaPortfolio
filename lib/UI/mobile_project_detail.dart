import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potrtfolio/Widget/CustomText.dart';
import 'package:potrtfolio/common/custom_color.dart';

class MobileProjectDetail extends StatefulWidget {
  const MobileProjectDetail({Key key}) : super(key: key);

  @override
  State<MobileProjectDetail> createState() => _MobileProjectDetailState();
}

class _MobileProjectDetailState extends State<MobileProjectDetail> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: CustomColor.greyColor,
            height: mediaHeight,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    //decoration: BoxDecoration(color: Color(0xff3D3769)),
                    width: mediaWidth * 0.8,
                    height: mediaHeight * 0.6,
                    child: CarouselSlider.builder(
                      itemCount: 2,
                      itemBuilder: (context, index, realIndex) {
                        return Column(children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Container(
                                margin: EdgeInsets.all(8.0),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage("images/zeerac/2.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Home Screen',
                            style: TextStyle(color: Colors.grey),
                          )
                        ]);
                      },
                      // items: [

                      //   Column(children: [
                      //     Expanded(
                      //       child: AspectRatio(
                      //         aspectRatio: 16 / 9,
                      //         child: Container(
                      //           margin: EdgeInsets.all(8.0),
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(10.0),
                      //             image: DecorationImage(
                      //               fit: BoxFit.fill,
                      //               image: AssetImage("images/zeerac/3.png"),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     Text(
                      //       'Comparison Listing Screen',
                      //       style: TextStyle(color: Colors.grey),
                      //     )
                      //   ]),
                      // ],

                      options: CarouselOptions(
                        height: 680.0,
                        enlargeCenterPage: true,
                        autoPlay: false,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: false,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: mediaWidth >= 320 ? 0.8 : 0.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      CustomText(
                        text: 'Zeerac',
                        textsize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // CustomText(
                      //   text:
                      //       "It is a user-friendly mobile app designed for buying and selling properties, providing a seamless platform for users to explore real estate listings and connect with potential buyers or sellers.",
                      //   textsize: 18,
                      //   color: Colors.grey,
                      // ),
                      Text(
                        "It is a user-friendly mobile app designed for buying and selling properties, providing a seamless platform for users to explore real estate listings and connect with potential buyers or sellers.",
                        style: GoogleFonts.robotoMono(color: Colors.grey),
                      )
                    ]),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
