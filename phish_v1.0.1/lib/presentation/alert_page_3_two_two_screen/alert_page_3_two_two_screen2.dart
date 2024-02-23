import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/alert_page_3_two_six_screen/alert_page_3_two_six_screen.dart';
import 'package:phish/widgets/app_bar/appbar_leading_image.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus3_screen/revised_frame_zeroplus3_screen.dart';

class AlertPage3TwoTwoScreen2 extends StatelessWidget {
  final int detectedKeywords;
  final String recordingTitle;
  final String recordingDuration;
  final String recordingDate;

  const AlertPage3TwoTwoScreen2({
    Key? key,
    required this.detectedKeywords,
    required this.recordingTitle,
    required this.recordingDuration,
    required this.recordingDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
       child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 110,
                color: Colors.grey[50], // Placeholder color
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Recording Title: $recordingTitle',
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      'Recording Duration: $recordingDuration',
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      'Recording Date: $recordingDate',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              _buildFrameFiftyFive(context),
              SizedBox(height: 20.v),
              Container(
                width: 305.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  right: 11.h,
                ),
                child: Text(
                  "Number of Detected: $detectedKeywords  Phishing Type: Institution impersonation type ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
              ),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                height: 60.h,
                width: 250.h,
                text: "* See Details...",
                onPressed: () {
                  _completeSplash(context, AlertPage3TwoSixScreen());
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
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
            height: 260.v,
            width: 238.h,
            alignment: Alignment.bottomLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage12,
            height: 90.adaptSize,
            width: 90.adaptSize,
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

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
