import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/revised_frame_six_dialog/revised_frame_six_dialog.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class RevisedFrameFiveDialog extends StatelessWidget {
  const RevisedFrameFiveDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 90.v),
          Text(
            "How to use this app ",
            style: theme.textTheme.headlineMedium,
          ),
          Spacer(
            flex: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 88.v,
                width: 91.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFile1,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                height: 88.v,
                width: 95.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.outlineGray,
                child: CustomImageView(
                  imagePath: ImageConstant.imgKnowledge1,
                  height: 52.v,
                  width: 51.h,
                  alignment: Alignment.centerRight,
                ),
              ),
              Container(
                height: 88.v,
                width: 91.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderLR20,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgHook1,
                  height: 68.v,
                  width: 66.h,
                  alignment: Alignment.topCenter,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 49,
          ),
          SizedBox(
            width: 277.h,
            child: Text(
              "By using toolbar, you can\n\n1. See the history of alerts.\n2. Learn how to manage Phishing.\n3. Find more info about Phishing Trends.",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.24,
              ),
            ),
          ),
          SizedBox(height: 50.v),
          SizedBox(
            height: 7.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 1,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 14.67,
                activeDotColor: appTheme.blueA200,
                dotColor: appTheme.blueGray100,
                dotHeight: 7.v,
                dotWidth: 7.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
