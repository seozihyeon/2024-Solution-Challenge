import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/alert_page_3_one_screen/alert_page_3_one_screen.dart';
import 'package:phish/presentation/how_to_screen/how_to_screen.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus5_screen/revised_frame_zeroplus5_screen.dart';

class AlertPage3TwoSixScreen extends StatelessWidget {
  const AlertPage3TwoSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              Container(
                width: 240.h,
                margin: EdgeInsets.symmetric(horizontal: 49.h),
                child: Text(
                  "Institution impersonation",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargePoppinsGray900,
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                height: 160.v,
                width: 159.h,
                padding: EdgeInsets.all(1.h),
                decoration: AppDecoration.outlineBlack900,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage10,
                      height: 143.v,
                      width: 126.h,
                      alignment: Alignment.bottomLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage12,
                      height: 50.v,
                      width: 42.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        right: 2.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                height: 36.v,
                width: 800.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        " ",
                        style: CustomTextStyles.headlineSmallBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              Container(
                width: 311.h,
                margin: EdgeInsets.only(
                  left: 13.h,
                  right: 14.h,
                ),
                child: Text(
                  "*Number of Detected: To give a specific\nCountermeasures, We’ve set the keywords, related with\ntypical Phishing criminal.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallInterGray900Light.copyWith(
                    height: 1.24,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              SizedBox(
                width: 500.h,
                child: Text(
                  "If excessive personal information is\nrequested by call, check if anything\nsuspicious of fraud.\n  If any damage occurs, report it to aninvestigative agency for assistance. Additionally, to prevent secondary damage, contact CISA (888) 282-0870",
                  maxLines: 9,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargePoppins,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBackToMainButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackToMainButton(BuildContext context) {
    return CustomElevatedButton(
      height: 80.v,
      width: 200.h,
      text: "See Advices",
      onPressed: () {
        _completeSplash(context, RevisedFrameZeroplus5Screen());
      },
      margin: EdgeInsets.only(
        left: 50.h,
        right: 50.h,
        bottom: 36.v,
      ),
      buttonTextStyle: CustomTextStyles.headlineLargeInterWhiteA700Regular,
    );
  }
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
