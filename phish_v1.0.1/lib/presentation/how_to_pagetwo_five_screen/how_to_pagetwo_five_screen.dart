import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class HowToPagetwoFiveScreen extends StatelessWidget {
  const HowToPagetwoFiveScreen({Key? key}) : super(key: key);

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
                    _buildHowToPageTwoFiveFrameThirtyNine(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgHacked2,
                      height: 300.adaptSize,
                      width: 300.adaptSize,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.v),
              Container(
                width: 320.h,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 20.h,
                ),
                child: Text(
                  "Personal information exposure accident prevention system\n(http://pd.fss.or.kr)\nAccident registration",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.23,
                  ),
                ),
              ),
              SizedBox(height: 40.v),
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
  Widget _buildHowToPageTwoFiveFrameThirtyNine(BuildContext context) {
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
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "6",
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
                width: 300.h,
                margin: EdgeInsets.only(right: 15.h),
                child: Text(
                  "Share damage cases\n",
                  maxLines: 2,
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
