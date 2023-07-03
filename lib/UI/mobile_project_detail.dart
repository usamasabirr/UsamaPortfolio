import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potrtfolio/Model/mobile_project_detail.dart';
import 'package:potrtfolio/Widget/CustomText.dart';
import 'package:potrtfolio/common/custom_color.dart';
import 'package:potrtfolio/common/project_data.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class MobileProjectDetail extends StatefulWidget {
  MobileProjectDetail({Key key, this.projectDetail}) : super(key: key);
  ProjectDetailModel projectDetail;

  @override
  State<MobileProjectDetail> createState() => _MobileProjectDetailState();
}

class _MobileProjectDetailState extends State<MobileProjectDetail> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;

    final _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.projectDetail.youtubeId,
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: CustomColor.greyColor,
          height: mediaHeight,
          width: mediaWidth,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: CustomColor.lightGreyColor,
                    //decoration: BoxDecoration(color: Color(0xff3D3769)),
                    width: mediaWidth * 0.8,
                    // height: mediaWidth * 0.8,
                    child: YoutubePlayer(
                      controller: _controller,
                      aspectRatio: 16 / 9,
                      // aspectRatio: 16 / 9,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      CustomText(
                        text: widget.projectDetail.title,
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
                        widget.projectDetail.summary,
                        style: GoogleFonts.robotoMono(color: CustomColor.extraLightGreyColor),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: 'Features',
                        textsize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: widget.projectDetail.imageList.length - 1,
                    itemBuilder: (context, index, realIndex) {
                      return Column(children: [
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                //color: Colors.red,
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(widget.projectDetail.imageList[index + 1].imagePath),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.projectDetail.imageList[index + 1].title,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.projectDetail.imageList[index + 1].featureSummary ?? ' ',
                          style: GoogleFonts.robotoMono(color: CustomColor.extraLightGreyColor),
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                      height: mediaHeight * 0.8,
                      enlargeCenterPage: true,
                      autoPlay: false,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: false,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      // viewportFraction: mediaWidth >= 320 && mediaWidth <= 425
                      //     ? 0.8
                      //     : mediaWidth >= 320
                      //         ? 0.8
                      //         : 0.5,
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
