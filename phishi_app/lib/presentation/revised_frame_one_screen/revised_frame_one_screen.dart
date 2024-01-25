import 'package:sihyeong_s_phishing_app/presentation/revised_frame_two_screen/revised_frame_two_screen.dart';

import '../revised_frame_one_screen/widgets/framebettxt_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sihyeong_s_phishing_app/core/app_export.dart';
import 'package:sihyeong_s_phishing_app/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class RevisedFrameOneScreen extends StatelessWidget {
  RevisedFrameOneScreen({Key? key})
      : super(
          key: key,
        );

  
  int sliderIndex = 1;
PageController _pageController = PageController();

 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPhising1,
                height: 240.v,
                width: 320.h,
              ),
              _buildFrameBetTxt(context),
              SizedBox(height: 23.v),
              SizedBox(
                height: 8.v,
              child: SmoothPageIndicator(
                                controller: _pageController, // PageController
                                count: 3,
                  effect: SwapEffect(
                    spacing: 17.11,
                    activeDotColor: appTheme.blueA200,
                    dotColor: appTheme.blueGray100,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                                onDotClicked: (index) {})
        ),
              SizedBox(height: 60.v),
              CustomElevatedButton(
                width: 200.h,
                text: "Next",
                onPressed: () {
                  _completeSplash(context, RevisedFrameTwoScreen());
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
  
  /// Section Widget
  Widget _buildFrameBetTxt(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 70.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return FramebettxtItemWidget();
        },
      ),
    );
  }
}
