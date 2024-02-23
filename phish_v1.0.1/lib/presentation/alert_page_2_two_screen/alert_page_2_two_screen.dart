import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class AlertPage2TwoScreen extends StatelessWidget {
  const AlertPage2TwoScreen({Key? key})
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
                ImageConstant.imgAlertPage2One,
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
                        child: Text(
                          "GDSC",
                          style: CustomTextStyles.titleLargePoppinsWhiteA1000,
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
                Container(
                  width: 280.h,
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                  ),
                  child: Text(
                    "Call recording have saved.\nCheck your recent history and settings.",
                    style: theme.textTheme.bodySmall,
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
  Widget _buildReminderSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration.fillGrayBf.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "<Reminder>",
              style: CustomTextStyles.titleLargePoppinsWhiteA950,
            ),
            SizedBox(height: 16.v),
            SizedBox(
              width: 232.h,
              child: Text(
                "“Does previous call contained something scary,  or shocking to you?” ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.20,
                ),
              ),
            ),
            SizedBox(height: 13.v),
            CustomImageView(
              imagePath: ImageConstant.imgFright,
              height: 100.adaptSize,
              width: 100.adaptSize,
            ),
            SizedBox(height: 7.v),
            Container(
              width: 210.h,
              margin: EdgeInsets.only(
                left: 9.h,
                right: 13.h,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t worry. \nAll these calls are not real.",
                      style: CustomTextStyles.titleMediumInterff70ff00.copyWith(
                        height: 1.20,
                      ),
                    ),
                    TextSpan(
                      text: " \n",
                      style: CustomTextStyles.titleMediumInterffff0000,
                    ),
                    TextSpan(
                      text: "\n",
                      style: CustomTextStyles.labelLargeffffffff.copyWith(
                        height: 1.20,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "Most of them are Phishers :(",
              style: CustomTextStyles.titleMediumInterWhiteA700,
            ),
            SizedBox(height: 10.v),
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
