import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class HowToPagetwoFourScreen extends StatelessWidget {
  const HowToPagetwoFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 416.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildHowToPageTwoFourFrameThirtyNine(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgHacked12,
                      height: 300.adaptSize,
                      width: 300.adaptSize,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.v),
              Container(
                width: 285.h,
                margin: EdgeInsets.only(
                  left: 42.h,
                  right: 31.h,
                ),
                child: Text(
                  "In case of malware infection, immediately delete it and\n reset the phone",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.23,
                  ),
                ),
              ),
              SizedBox(height: 51.v),
              CustomElevatedButton(
                width: 200.h,
                text: "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHowToPageTwoFourFrameThirtyNine(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 130.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.black900,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder40,
                ),
                child: Container(
                  height: 80.v,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillBlack.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder40,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          margin: EdgeInsets.only(top: 5.v),
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(
                              18.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "5",
                            style:
                                CustomTextStyles.headlineLargePoppinsBlack900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 237.h,
                margin: EdgeInsets.only(right: 49.h),
                child: Text(
                  "Delete malicious apps and reset mobile phone",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineMediumWhiteA700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
