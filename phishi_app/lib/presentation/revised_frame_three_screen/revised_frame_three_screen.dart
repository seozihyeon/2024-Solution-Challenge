import 'package:flutter/material.dart';
import 'package:sihyeong_s_phishing_app/core/app_export.dart';
import 'package:sihyeong_s_phishing_app/presentation/revised_frame_four_dialog/revised_frame_four_dialog.dart';
import 'package:sihyeong_s_phishing_app/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RevisedFrameThreeScreen extends StatelessWidget {
  RevisedFrameThreeScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 3;
 PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 43.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLanguages1,
                height: 160.adaptSize,
                width: 160.adaptSize,
              ),
              SizedBox(height: 35.v),
              Text(
                "Select language",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 3.v),
              Text(
                "Please set your language to use app",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 22.v),
              SizedBox(
                height: 8.v,
              child: SmoothPageIndicator(
                                controller: _pageController, // PageController
                                count: 3,
                  effect: ScrollingDotsEffect(
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
                text: "Next",
                margin: EdgeInsets.symmetric(horizontal: 36.h),
                onPressed: () {
                  _completeSplash(context, RevisedFrameFourDialog());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }