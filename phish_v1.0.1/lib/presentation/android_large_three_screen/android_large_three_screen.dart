import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_icon_button.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus5_screen/revised_frame_zeroplus5_screen.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  const AndroidLargeThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 49.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 118.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 10.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgKnowledge1,
                                                  height: 100.adaptSize,
                                                  width: 100.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 7.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 92.h, bottom: 79.v),
                                                  child: CustomIconButton(
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImage436x36)))
                                            ]))),
                                SizedBox(height: 12.v),
                                CustomElevatedButton(
                                  height: 40.h,
                                  width: 100.h,
                                  text: "Next",
                                  onPressed: () {
                                    _completeSplash(
                                        context, RevisedFrameZeroplus5Screen());
                                  },
                                ),
                                Container(
                                    width: 267.h,
                                    margin: EdgeInsets.only(
                                        left: 46.h, right: 45.h),
                                    child: Text(
                                        "How to deal with Voice Phishing ",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .headlineLargePoppinsGray900)),
                                SizedBox(height: 11.v),
                                _buildFrameThirtyEight(context),
                                SizedBox(height: 14.v),
                                Container(
                                    width: 302.h,
                                    margin: EdgeInsets.only(
                                        left: 33.h, right: 23.h),
                                    child: Text(
                                        "Call 911, Financial Supervisory Service requests l reporting and suspension of payment to financial companies",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodyLargeInter
                                            .copyWith(height: 1.24))),
                                SizedBox(height: 23.v),
                                _buildFrameFortyFour(context),
                                SizedBox(height: 23.v),
                                _buildFrameThirtyNine(context),
                                SizedBox(height: 17.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtBulkpaymentsuspensio(context);
                                    },
                                    child: Container(
                                        width: 331.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, right: 12.h),
                                        child: Text(
                                            "Bulk payment suspension at account information integration service (www.payinfo.or.kr) and financial company",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyLargeInter
                                                .copyWith(height: 1.24)))),
                                SizedBox(height: 12.v),
                                _buildFrameThirtyNine1(context),
                                SizedBox(height: 16.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtImpersonationTheft(context);
                                    },
                                    child: Container(
                                        width: 316.h,
                                        margin: EdgeInsets.only(
                                            left: 27.h, right: 15.h),
                                        child: Text(
                                            "Impersonation theft prevention service (www.msafer.or.kr) and blanket payment suspension at financial company",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyLargeInter
                                                .copyWith(height: 1.24)))),
                                SizedBox(height: 12.v),
                                _buildFrameFortySix(context),
                                SizedBox(height: 32.v),
                                _buildFrameThirtyNine2(context),
                                SizedBox(height: 16.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtPersonalInformation1(context);
                                    },
                                    child: Container(
                                        width: 310.h,
                                        margin: EdgeInsets.only(
                                            left: 27.h, right: 21.h),
                                        child: Text(
                                            "Personal information exposure accident prevention system (http://pd.fss.or.kr) Accident registration",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyLargeInter
                                                .copyWith(height: 1.24)))),
                                SizedBox(height: 12.v),
                                _buildFrameThirtyNine3(context),
                                SizedBox(height: 17.v),
                                Container(
                                    width: 306.h,
                                    margin: EdgeInsets.only(
                                        left: 27.h, right: 23.h),
                                    child: Text(
                                        "Share damage cases by contacting the Voice Phishing Guard website",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodyLargeInter
                                            .copyWith(height: 1.24)))
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildFrameThirtyEight(BuildContext context) {
    return SizedBox(
        height: 82.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.black900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder40),
                  child: Container(
                      height: 80.v,
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 14.v),
                      decoration: AppDecoration.fillBlack.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder40),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                margin: EdgeInsets.only(top: 5.v),
                                decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius:
                                        BorderRadius.circular(18.h)))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: Text("1",
                                    style: theme.textTheme.headlineLarge)))
                      ])))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 247.h,
                  child: Text("Report Damage and\nSuspension Request",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortyFour(BuildContext context) {
    return SizedBox(
        height: 160.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 80.v),
                  padding: EdgeInsets.symmetric(horizontal: 7.h),
                  decoration: AppDecoration.fillBlack
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 48.v,
                            width: 36.h,
                            margin: EdgeInsets.only(top: 13.v, bottom: 18.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 36.adaptSize,
                                      width: 36.adaptSize,
                                      decoration: BoxDecoration(
                                          color: appTheme.whiteA700,
                                          borderRadius:
                                              BorderRadius.circular(18.h)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("2",
                                      style: theme.textTheme.headlineLarge))
                            ])),
                        Expanded(
                            child: Container(
                                width: 261.h,
                                margin: EdgeInsets.only(left: 21.h, top: 3.v),
                                child: Text(
                                    "Personal information exposure registration",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.headlineSmall)))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtPersonalInformation(context);
                  },
                  child: SizedBox(
                    width: 310.h,
                  ))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 160.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(bottom: 80.v),
                            padding: EdgeInsets.symmetric(horizontal: 7.h),
                            decoration: AppDecoration.fillBlack.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder40),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 48.v,
                                      width: 36.h,
                                      margin: EdgeInsets.only(
                                          top: 13.v, bottom: 18.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 36.adaptSize,
                                                    width: 36.adaptSize,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            appTheme.whiteA700,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    18.h)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("2",
                                                    style: theme.textTheme
                                                        .headlineLarge))
                                          ])),
                                  Expanded(
                                      child: Container(
                                          width: 261.h,
                                          margin: EdgeInsets.only(
                                              left: 21.h, top: 3.v),
                                          child: Text(
                                              "Personal information exposure registration",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.headlineSmall)))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 310.h,
                        )),
                    Align(
                        alignment: Alignment.center,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(horizontal: 7.h),
                              decoration: AppDecoration.fillBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder40),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 48.v,
                                        width: 36.h,
                                        margin: EdgeInsets.only(
                                            top: 13.v, bottom: 18.v),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 36.adaptSize,
                                                      width: 36.adaptSize,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      18.h)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("2",
                                                      style: theme.textTheme
                                                          .headlineLarge))
                                            ])),
                                    Expanded(
                                        child: Container(
                                            width: 261.h,
                                            margin: EdgeInsets.only(
                                                left: 21.h, top: 3.v),
                                            child: Text(
                                                "Personal information exposure registration",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.headlineSmall)))
                                  ])),
                          SizedBox(height: 16.v),
                          Container(
                              width: 310.h,
                              margin: EdgeInsets.only(left: 27.h, right: 21.h),
                              child: Text(
                                  "Personal information exposure accident prevention system (http://pd.fss.or.kr) Accident registration",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyLargeInter
                                      .copyWith(height: 1.24)))
                        ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameThirtyNine(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 5.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 48.v,
              width: 36.h,
              margin: EdgeInsets.only(top: 8.v, bottom: 12.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(18.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("3", style: theme.textTheme.headlineLarge))
              ])),
          Expanded(
              child: Container(
                  width: 265.h,
                  margin: EdgeInsets.only(left: 9.h, top: 6.v),
                  child: Text("Apply lump sum payment suspension on account",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameThirtyNine1(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 14.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 48.v,
              width: 36.h,
              margin: EdgeInsets.only(bottom: 3.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(18.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("4", style: theme.textTheme.headlineLarge))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 11.v, bottom: 3.v),
              child: Text("Report identity theft",
                  style: theme.textTheme.headlineSmall))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortySix(BuildContext context) {
    return SizedBox(
        height: 140.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 130.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: appTheme.black900,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.circleBorder40),
                            child: Container(
                                height: 80.v,
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.h, vertical: 14.v),
                                decoration: AppDecoration.fillBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder40),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.h)))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("5",
                                                  style: theme.textTheme
                                                      .headlineLarge)))
                                    ])))),
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
                                style:
                                    CustomTextStyles.headlineMediumWhiteA700)))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 312.h,
                  child: Text(
                      "In case of malware infection, immediately delete and reset the phone",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeInter
                          .copyWith(height: 1.24))))
        ]));
  }

  /// Section Widget
  Widget _buildFrameThirtyNine2(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 14.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 48.v,
                  width: 36.h,
                  margin: EdgeInsets.only(bottom: 3.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(18.h)))),
                    Align(
                        alignment: Alignment.center,
                        child: Text("6", style: theme.textTheme.headlineLarge))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 4.v, bottom: 3.v),
                  child: Text("Share damage cases",
                      style: CustomTextStyles.headlineMediumWhiteA700))
            ]));
  }

  /// Section Widget
  Widget _buildFrameThirtyNine3(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 48.v,
              width: 36.h,
              margin: EdgeInsets.only(top: 14.v, bottom: 17.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(18.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("7", style: theme.textTheme.headlineLarge))
              ])),
          Expanded(
              child: Container(
                  width: 261.h,
                  margin: EdgeInsets.only(left: 21.h, top: 3.v),
                  child: Text("Personal information exposure registration",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall)))
        ]));
  }

  onTapTxtPersonalInformation(BuildContext context) {
    // TODO: implement Actions
  }

  onTapTxtBulkpaymentsuspensio(BuildContext context) {
    // TODO: implement Actions
  }

  onTapTxtImpersonationTheft(BuildContext context) {
    // TODO: implement Actions
  }

  onTapTxtPersonalInformation1(BuildContext context) {
    // TODO: implement Actions
  }
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
