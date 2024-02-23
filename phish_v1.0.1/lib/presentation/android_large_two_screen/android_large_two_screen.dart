import '../android_large_two_screen/widgets/topicgrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_icon_button.dart';
import 'package:phish/widgets/custom_outlined_button.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus5_screen/revised_frame_zeroplus5_screen.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  const AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildPhishingTrendsRow(context),
                SizedBox(height: 3.v),
                _buildLatestCasesRow(context),
                SizedBox(height: 16.v),
                _buildTopicRows(context),
                SizedBox(height: 15.v),
                _buildTopicGrid(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhishingTrendsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "Phishing Trends",
              style: CustomTextStyles.headlineLargePoppinsGray900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHook1,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 9.v,
              bottom: 13.v,
            ),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage436x36,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLatestCasesRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
              width: 180.h,
              text: "Latest cases",
              buttonStyle: CustomButtonStyles.outlineWhite1),
          CustomOutlinedButton(
            width: 180.h,
            text: "Main Types",
            buttonStyle: CustomButtonStyles.outlineBlack1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopicRows(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: appTheme.gray300,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: appTheme.black900,
                        width: 4.h,
                      ),
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Container(
                      height: 160.adaptSize,
                      width: 160.adaptSize,
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            alignment: Alignment.bottomRight,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "NEW",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "Topic 1",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160.adaptSize,
                    width: 160.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 38.h,
                      vertical: 40.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "Topic 2",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopicGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 191.v,
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return TopicgridItemWidget();
        },
      ),
    );
  }
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
