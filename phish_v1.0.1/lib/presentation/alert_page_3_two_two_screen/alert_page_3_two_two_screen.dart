import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_leading_image.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';

class AlertPage3TwoTwoScreen extends StatelessWidget {

  const AlertPage3TwoTwoScreen({Key? key})
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
            horizontal: 15.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage11,
                height: 69.v,
                width: 330.h,
              ),
              SizedBox(height: 33.v),
              _buildFrameFiftyFive(context),
              SizedBox(height: 44.v),
              Container(
                width: 305.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  right: 11.h,
                ),
                child: Text(
                  "Number of Detected*: Phishing Type: Institution impersonation type ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
              ),
              SizedBox(height: 28.v),
              Text(
                "Details",
                style: CustomTextStyles.bodyLargeInterGray900,
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
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.outlineBlack900,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage10,
            height: 230.v,
            width: 238.h,
            alignment: Alignment.bottomLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage12,
            height: 80.adaptSize,
            width: 80.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 29.v,
              right: 18.h,
            ),
          ),
        ],
      ),
    );
  }
}
