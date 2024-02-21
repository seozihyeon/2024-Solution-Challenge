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
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 36.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgHacked2,
                      height: 300.adaptSize,
                      width: 300.adaptSize),
                  SizedBox(height: 35.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtPersonalInformation(context);
                          },
                          child: Container(
                              width: 329.h,
                              margin: EdgeInsets.only(left: 30.h),
                              child: Text(
                                  "Personal information exposure accident prevention system (http://pd.fss.or.kr) Accident registration",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge!
                                      .copyWith(height: 1.23))))),
                  SizedBox(height: 51.v),
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
                        padding: EdgeInsets.only(left: 7.h, right: 8.h),
                        child: Text("6",
                            style:
                                CustomTextStyles.headlineLargePoppinsBlack900)))
              ])),
          AppbarSubtitle(
              text: "Share damage cases",
              margin: EdgeInsets.only(left: 6.h, top: 4.v, bottom: 1.v))
        ]),
        styleType: Style.bgFill);
  }

  onTapTxtPersonalInformation(BuildContext context) {
    // TODO: implement Actions
  }
}
