import 'package:flutter/material.dart';
import 'package:sihyeong_s_phishing_app/core/app_export.dart';
import 'package:sihyeong_s_phishing_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:sihyeong_s_phishing_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sihyeong_s_phishing_app/widgets/app_bar/custom_app_bar.dart';

class RevisedFrameSevenScreen extends StatelessWidget {
  const RevisedFrameSevenScreen({Key? key})
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
            horizontal: 20.h,
            vertical: 49.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPhising1,
                height: 240.v,
                width: 320.h,
              ),
              SizedBox(height: 49.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup10LightGreen300,
                height: 100.v,
                width: 200.h,
              ),
              SizedBox(height: 38.v),
              Text(
                "Activated",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 5.v),
              Text(
                "Now this app alerts you!",
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrameFourteen(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgImage436x36,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage4,
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameFourteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 68.adaptSize,
            width: 68.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 22.v),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL201,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgFile1,
              height: 68.adaptSize,
              width: 68.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 112.v,
            width: 126.h,
            margin: EdgeInsets.only(left: 24.h),
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 21.v,
            ),
            decoration: AppDecoration.outlineGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgKnowledge1,
              height: 68.adaptSize,
              width: 68.adaptSize,
              alignment: Alignment.centerRight,
            ),
          ),
          Container(
            height: 112.v,
            width: 117.h,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderLR201,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgHook1,
              height: 88.v,
              width: 85.h,
              alignment: Alignment.topCenter,
            ),
          ),
        ],
      ),
    );
  }
}
