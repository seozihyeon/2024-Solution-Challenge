import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AlertPage1TwoDialog extends StatelessWidget {
  const AlertPage1TwoDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgImage7,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 38.h,
              vertical: 86.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 396.v,
                  width: 280.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 50.v,
                          width: 200.h,
                          margin: EdgeInsets.only(top: 7.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 43.v),
                          child: Text(
                            "Mobile 121",
                            style: CustomTextStyles.titleLargeWhiteA700,
                          ),
                        ),
                      ),
                      _buildReminderSection(context),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(height: 75.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReminderSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "<Remember!>",
              style: CustomTextStyles.headlineLargePoppinsBlack900,
            ),
            SizedBox(height: 9.v),
            Container(
              width: 320.h,
              margin: EdgeInsets.symmetric(horizontal: 1.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Public institutions such as IRS or USCIS ",
                      style: CustomTextStyles.labelLargeff16182c,
                    ),
                    TextSpan(
                      text: "\nnever ask for money, ",
                      style: CustomTextStyles.bodySmallInterffff0000,
                    ),
                    TextSpan(
                      text: "ask to buy gift cards",
                      style: CustomTextStyles.bodySmallInterffff0000,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "over the phone.\n",
                      style: CustomTextStyles.bodySmallInterff16182c,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 7.v),
            CustomImageView(
              imagePath: ImageConstant.imgGiveMoney1,
              height: 100.adaptSize,
              width: 100.adaptSize,
            ),
            SizedBox(height: 10.v),
            Text(
              "AND ALSO YOUR FOLKS TOO!!!",
              style: CustomTextStyles.titleSmallGray900,
            ),
            SizedBox(height: 13.v),
            CustomElevatedButton(
              height: 40.v,
              text: "× Close  ",
              leftIcon: Container(
                margin: EdgeInsets.only(right: 0.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup29,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
              ),
              buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
            ),
          ],
        ),
      ),
    );
  }
}
