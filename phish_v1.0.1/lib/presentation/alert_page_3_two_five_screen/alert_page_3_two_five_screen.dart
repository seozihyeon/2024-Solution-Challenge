import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/revised_frame_zeroplus5_screen/revised_frame_zeroplus5_screen.dart';

import 'package:phish/widgets/app_bar/appbar_leading_image.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus42_screen/revised_frame_zeroplus42_screen.dart';

class AlertPage3TwoFiveScreen extends StatelessWidget {
  const AlertPage3TwoFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage11,
                height: 67.v,
                width: 330.h,
              ),
              SizedBox(height: 10.v),
              _buildFrameFiftyFive(context),
              SizedBox(height: 10.v),
              SizedBox(
                width: 329.h,
                child: Text(
                  "Number of Detected*: N\nPhishing Type: Blackmailer",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBlack1100,
                ),
              ),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                height: 60.v,
                width: 200.h,
                text: "See Advices",
                onPressed: () {
                  _completeSplash(context, RevisedFrameZeroplus5Screen());
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBackToMain(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackToMain(BuildContext context) {
    return CustomElevatedButton(
      width: 200.h,
      text: "Back to Main",
      onPressed: () {
        _completeSplash(context, RevisedFrameZeroplus42Screen());
      },
      margin: EdgeInsets.only(
        left: 80.h,
        right: 80.h,
        bottom: 42.v,
      ),
      buttonTextStyle: CustomTextStyles.headlineLarge_1,
    );
  }
}

/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(
    leadingWidth: 68.h,
    leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgFile1,
    ),
    title: AppbarSubtitleOne(
      text: "File selected:",
      margin: EdgeInsets.only(
        left: 31.h,
        top: 25.v,
      ),
    ),
  );
}

/// Section Widget
Widget _buildFrameFiftyFive(BuildContext context) {
  return Container(
    height: 307.v,
    width: 320.h,
    padding: EdgeInsets.symmetric(horizontal: 16.h),
    decoration: AppDecoration.outlineBlack900,
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFreeIconKnife1164393,
          height: 120.adaptSize,
          width: 120.adaptSize,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 80.v),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFreeIconSpeec,
          height: 280.adaptSize,
          width: 280.adaptSize,
          alignment: Alignment.topCenter,
        ),
      ],
    ),
  );
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
