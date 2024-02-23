import 'package:phish/presentation/revised_frame_five_dialog/revised_frame_five_dialog.dart';

import '../revised_frame_one_screen/widgets/framebettxt_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class RevisedFrameFourDialog extends StatelessWidget {
  const RevisedFrameFourDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.h,
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 150.v),
          Text(
            "How to use this app",
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 60.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 120.v,
              width: 132.h,
              margin: EdgeInsets.only(left: 85.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup10,
                    height: 78.v,
                    width: 135.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSwipeRight1,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.v),
          SizedBox(
            height: 42.v,
            child: VerticalDivider(
              width: 2.h,
              thickness: 2.v,
            ),
          ),
          SizedBox(height: 45.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup10LightGreen300,
            height: 78.v,
            width: 135.h,
          ),
          SizedBox(height: 45.v),
          Container(
            width: 202.h,
            margin: EdgeInsets.symmetric(horizontal: 40.h),
            child: Text(
              "You can activate the alert system\nby using on-off switch. ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.24,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          SizedBox(
            height: 15.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
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
