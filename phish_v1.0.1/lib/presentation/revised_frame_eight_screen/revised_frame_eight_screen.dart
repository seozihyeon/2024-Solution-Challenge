import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:phish/widgets/app_bar/appbar_trailing_image.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus3_screen/revised_frame_zeroplus3_screen.dart';
import 'package:flutter/cupertino.dart';

class RevisedFrameEightScreen extends StatelessWidget {
  const RevisedFrameEightScreen({Key? key})
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
              SizedBox(height: 2.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup10,
                height: 82.v,
                width: 143.h,
              ),
              SizedBox(height: 17.v),
              Text(
                "Disactivated",
                style: CustomTextStyles.headlineLargePoppinsBlack900,
              ),
              SizedBox(height: 5.v),
              Text(
                "You turned off the alert function",
                style: theme.textTheme.bodyLarge,
              ),
              CustomElevatedButton(
                height: 40.h,
                width: 100.h,
                text: "Next",
                onPressed: () {
                  _completeSplash(context, RevisedFrameZeroplus3Screen());
                },
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
      padding: EdgeInsets.only(left: 0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 112.v,
            width: 117.h,
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

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
