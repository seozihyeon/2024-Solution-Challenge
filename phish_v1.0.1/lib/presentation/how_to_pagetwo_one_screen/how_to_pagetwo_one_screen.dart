import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class HowToPagetwoOneScreen extends StatelessWidget {
  const HowToPagetwoOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 36.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgHacked1300x300,
                      height: 300.adaptSize,
                      width: 300.adaptSize),
                  SizedBox(height: 36.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtBulkpaymentsuspensio(context);
                          },
                          child: Container(
                              width: 296.h,
                              margin: EdgeInsets.only(left: 26.h),
                              child: Text(
                                  "Bulk payment suspension at account information integration service (www.payinfo.or.kr) and financial company",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge!
                                      .copyWith(height: 1.23))))),
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
                  margin: EdgeInsets.only(top: 1.v, bottom: 12.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            margin: EdgeInsets.only(top: 5.v, bottom: 6.v),
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(18.h)))),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.only(left: 7.h, right: 8.h),
                            child: Text("3",
                                style: CustomTextStyles
                                    .headlineLargePoppinsBlack900)))
                  ])),
              AppbarSubtitleThree(
                  text: "Apply lump sum payment suspension on account",
                  margin: EdgeInsets.only(left: 9.h))
            ])),
        styleType: Style.bgFill);
  }

  onTapTxtBulkpaymentsuspensio(BuildContext context) {
    // TODO: implement Actions
  }
}
