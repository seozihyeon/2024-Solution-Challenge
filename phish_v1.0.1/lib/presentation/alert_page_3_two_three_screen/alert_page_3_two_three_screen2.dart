import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_leading_image.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/alert_page_3_two_five_screen/alert_page_3_two_five_screen.dart';

class AlertPage3TwoThreeScreen2 extends StatelessWidget {
  final int detectedKeywords;
  final String recordingTitle;
  final String recordingDuration;
  final String recordingDate;

  const AlertPage3TwoThreeScreen2({
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
                height: 90,
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
              _buildFrameFiftyTwo(context),
              SizedBox(height: 44.v),
              Container(
                width: 305.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  right: 11.h,
                ),
                child: Text(
                  "Number of Detected: $detectedKeywords  Phishing Type: Inducing Gift card purchases  ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
              ),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                height: 60.h,
                width: 250.h,
                text: "* See Details...",
                onPressed: () {
                  _completeSplash(context, AlertPage3TwoFiveScreen());
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
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
