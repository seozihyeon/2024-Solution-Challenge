import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_leading_image.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';

class AlertPage3TwoScreen2 extends StatelessWidget {

  final int detectedKeywords;
  final String recordingTitle;
  final String recordingDuration;
  final String recordingDate;

  const AlertPage3TwoScreen2 ({
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 70,
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
                  "Number of Detected: $detectedKeywords Phishing Type: Blackmailer",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
              ),
              SizedBox(height: 64.v),
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
}
