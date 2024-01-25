import 'package:flutter/material.dart';
import 'package:sihyeong_s_phishing_app/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class RevisedFrameSixDialog extends StatelessWidget {
  const RevisedFrameSixDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317.h,
      padding: EdgeInsets.fromLTRB(43.h, 120.v, 18.h, 38.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40.v),
          Text(
            "How to use this app ",
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 77.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage4,
            height: 192.adaptSize,
            width: 192.adaptSize,
          ),
          SizedBox(height: 120.v),
          SizedBox(
            width: 278.h,
            child: Text(
              "You can access to the previous recording files\nby touching the file icon. ",
              maxLines: 2,
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
