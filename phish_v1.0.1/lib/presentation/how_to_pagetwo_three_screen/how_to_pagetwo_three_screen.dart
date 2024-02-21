import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class HowToPagetwoThreeScreen extends StatelessWidget {
  const HowToPagetwoThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 36.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgHacked11,
                      height: 300.adaptSize,
                      width: 300.adaptSize),
                  SizedBox(height: 35.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtImpersonationTheft(context);
                      },
                      child: Container(
                          width: 308.h,
                          margin: EdgeInsets.only(left: 12.h),
                          child: Text(
                              "Impersonation theft prevention service (www.msafer.or.kr) and blanket payment suspension at financial company",
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
        centerTitle: true,
        title: Row(children: [
          SizedBox(
              height: 48.000008.v,
              width: 36.h,
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
                        padding: EdgeInsets.only(left: 6.h, right: 7.h),
                        child: Text("4",
                            style:
                                CustomTextStyles.headlineLargePoppinsBlack900)))
              ])),
          AppbarSubtitleTwo(
              text: "Report identity theft",
              margin: EdgeInsets.only(left: 10.h, top: 11.v))
        ]),
        styleType: Style.bgFill);
  }

  onTapTxtImpersonationTheft(BuildContext context) {
    // TODO: implement Actions
  }
}
