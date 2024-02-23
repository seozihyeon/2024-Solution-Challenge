import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeOnePage extends StatefulWidget {
  const AndroidLargeOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  AndroidLargeOnePageState createState() => AndroidLargeOnePageState();
}

class AndroidLargeOnePageState extends State<AndroidLargeOnePage>
    with AutomaticKeepAliveClientMixin<AndroidLargeOnePage> {
  @override
  bool get wantKeepAlive => true;
  int sliderIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    right: 18.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "2024.01.XX",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      _buildFifteen(context),
                      SizedBox(height: 32.v),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "2024.01.XX",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      _buildSixteen(context),
                      SizedBox(height: 32.v),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "2024.01.XX",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      _buildSeventeen(context),
                      SizedBox(
                        height: 8.v,
                      ),
                      SizedBox(height: 32.v),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "2024.01.XX",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      _buildEighteen(context),
                      SizedBox(height: 32.v),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "2024.01.XX",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      _buildNineteen(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 118.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1,
        height: 80.adaptSize,
        width: 80.adaptSize,
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 118.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1,
        height: 80.adaptSize,
        width: 80.adaptSize,
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 118.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1,
        height: 80.adaptSize,
        width: 80.adaptSize,
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 118.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1,
        height: 80.adaptSize,
        width: 80.adaptSize,
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 118.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1,
        height: 80.adaptSize,
        width: 80.adaptSize,
      ),
    );
  }
}
