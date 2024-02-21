import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class HowToPagetwoScreen extends StatelessWidget {
  const HowToPagetwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 36.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgHacked1,
                      height: 300.adaptSize,
                      width: 300.adaptSize),
                  SizedBox(height: 35.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtDescription(context);
                      },
                      child: Container(
                          width: 302.h,
                          margin: EdgeInsets.only(left: 11.h),
                          child: Text(
                              "Personal information exposure accident prevention system\n (http://pd.fss.or.kr) Accident registration",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleLarge!
                                  .copyWith(height: 1.23)))),
                  SizedBox(height: 26.v),
                  CustomElevatedButton(width: 200.h, text: "Next"),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 148.v,
        title: Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(children: [
              Container(
                  height: 48.v,
                  width: 36.h,
                  margin: EdgeInsets.only(top: 9.v, bottom: 17.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            margin: EdgeInsets.only(top: 6.v, bottom: 5.v),
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(18.h)))),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.only(left: 8.h, right: 7.h),
                            child: Text("2",
                                style: CustomTextStyles
                                    .headlineLargePoppinsBlack900)))
                  ])),
              AppbarSubtitleTwo(
                  text: "Personal information exposure registration",
                  margin: EdgeInsets.only(left: 21.h))
            ])),
        styleType: Style.bgFill);
  }

  onTapTxtDescription(BuildContext context) {
    // TODO: implement Actions
  }
}
