import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class HowToPagetwoTwoScreen extends StatelessWidget {
  const HowToPagetwoTwoScreen({Key? key})
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
            horizontal: 12.h,
            vertical: 36.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHacked13,
                height: 300.adaptSize,
                width: 300.adaptSize,
              ),
              SizedBox(height: 36.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 304.h,
                  margin: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "Share damage cases  by contacting the Voice Phishing Guard website",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge!.copyWith(
                      height: 1.23,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 55.v),
              CustomElevatedButton(
                width: 200.h,
                text: "Back to Main",
                buttonTextStyle: CustomTextStyles.headlineLarge_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 148.v,
      title: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Row(
          children: [
            Container(
              height: 47.999992.v,
              width: 36.h,
              margin: EdgeInsets.only(
                top: 10.v,
                bottom: 16.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 6.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                        borderRadius: BorderRadius.circular(
                          18.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Text(
                        "7",
                        style: CustomTextStyles.headlineLargePoppinsBlack900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppbarSubtitleTwo(
              text: "Personal information exposure registration",
              margin: EdgeInsets.only(left: 21.h),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
