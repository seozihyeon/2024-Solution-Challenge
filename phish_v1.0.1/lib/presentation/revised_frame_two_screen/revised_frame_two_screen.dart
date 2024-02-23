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
              SizedBox(height: 160.v),
              CustomImageView(
                imagePath: ImageConstant.imgCheckBox1,
                height: 159.v,
                width: 160.h,
              ),
              SizedBox(height: 42.v),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Need permissions",
                      style: CustomTextStyles.headlineLargePoppinsGray900,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Please allow permissions to use app",
                      style: CustomTextStyles.bodyLargeInterGray900,
                      textAlign: TextAlign.center,

                    ),
                  ],
                ),
              ),
              Spacer(), // Spacer를 추가하여 나머지 위젯을 하단으로 밀어냄
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
              SizedBox(height: 20.v),
              CustomElevatedButton(
                width: 200.h,
                text: "Allow it",
              ),
              SizedBox(height: 80.v), // 추가적인 하단 여백
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
        height: 20.v,
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
