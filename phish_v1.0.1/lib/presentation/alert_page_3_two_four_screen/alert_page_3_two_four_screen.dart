import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/alert_page_3_one_screen/alert_page_3_one_screen.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus5_screen/revised_frame_zeroplus5_screen.dart';

class AlertPage3TwoFourScreen extends StatelessWidget {
  const AlertPage3TwoFourScreen({Key? key})
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
            horizontal: 15.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              Text(
                "Blackmailer",
                style: CustomTextStyles.displayMediumBlack900,
              ),
              SizedBox(height: 12.v),
              Container(
                height: 160.adaptSize,
                width: 160.adaptSize,
                decoration: AppDecoration.outlineBlack900,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFreeIconKnife1164393,
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFreeIconSpeec,
                      height: 160.adaptSize,
                      width: 160.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                " ",
                style: CustomTextStyles.headlineSmallBlack900,
              ),
              SizedBox(height: 4.v),
              Container(
                width: 311.h,
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: Text(
                  "To give a specific\nCountermeasures, We’ve set the keywords, related with typical Phishing criminal.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallInterGray900Light.copyWith(
                    height: 1.24,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Container(
                width: 319.h,
                margin: EdgeInsets.only(left: 11.h),
                child: Text(
                  "Don’t give the blackmailer what they want.\n-> Refuse to pay the blackmail.\nStop communicating with the blackmailer and protect all of your accounts.\n-> End all contact with the blackmailer. \nCompile all the evidence you have of the blackmail attempt.\n-> Block the blackmailer and ask your friends to do the same.\nReport the blackmailer to the local police and the FBI.",
                  maxLines: 12,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargePoppins3,
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
