import 'package:phish/presentation/revised_frame_three_screen/revised_frame_three_screen.dart';

import '../revised_frame_two_screen/widgets/sliderframebettxt_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RevisedFrameTwoScreen extends StatelessWidget {
  RevisedFrameTwoScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 33.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckBox1,
                height: 159.v,
                width: 160.h,
              ),
              SizedBox(height: 42.v),
              _buildSliderFrameBetTxt(context),
              SizedBox(height: 23.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 17.11,
                    activeDotColor: appTheme.blueA200,
                    dotColor: appTheme.blueGray100,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 60.v),
              CustomElevatedButton(
                width: 200.h,
                text: "Allow it",
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderFrameBetTxt(BuildContext context) {
    return CarouselSlider.builder(
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
        return SliderframebettxtItemWidget();
      },
    );
  }
}
