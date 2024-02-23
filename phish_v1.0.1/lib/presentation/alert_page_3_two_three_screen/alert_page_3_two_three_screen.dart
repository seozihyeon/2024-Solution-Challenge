import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/alert_page_3_one_screen/alert_page_3_one_screen.dart';
import 'package:phish/widgets/app_bar/appbar_leading_image.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class AlertPage3TwoThreeScreen extends StatelessWidget {
  const AlertPage3TwoThreeScreen({Key? key})
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
            vertical: 12.5.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage11,
                height: 69.v,
                width: 330.h,
              ),
              SizedBox(height: 10.v),
              _buildFrameFiftyTwo(context),
              SizedBox(height: 10.v),
              SizedBox(
                width: 339.h,
                child: Text(
                  "Number of Detected*: N\nPhishing Type: Inducing Gift card purchases  ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                "* See more Details...",
                style: CustomTextStyles.bodyLargeInterGray900,
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
        _completeSplash(context, AlertPage3OneScreen());
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
Widget _buildFrameFiftyTwo(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.h),
    padding: EdgeInsets.symmetric(
      horizontal: 8.h,
      vertical: 1.v,
    ),
    decoration: AppDecoration.outlineBlack900,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 2.v),
        CustomImageView(
          imagePath: ImageConstant.imgImage13,
          height: 295.adaptSize,
          width: 295.adaptSize,
        ),
      ],
    ),
  );
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
